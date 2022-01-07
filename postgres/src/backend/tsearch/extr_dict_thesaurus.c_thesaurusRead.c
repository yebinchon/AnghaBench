
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32 ;
typedef scalar_t__ uint16 ;
typedef int tsearch_readline_state ;
struct TYPE_5__ {scalar_t__ nsubst; } ;
typedef TYPE_1__ DictThesaurus ;


 int ERRCODE_CONFIG_FILE_ERROR ;
 int ERROR ;
 int TR_INLEX ;
 int TR_INSUBS ;
 int TR_WAITLEX ;
 int TR_WAITSUBS ;
 int addWrd (TYPE_1__*,char*,char*,scalar_t__,int ,scalar_t__,int) ;
 int elog (int ,char*,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,...) ;
 char* get_tsearch_config_filename (char const*,char*) ;
 int newLexeme (TYPE_1__*,char*,char*,scalar_t__,int ) ;
 int pfree (char*) ;
 int pg_mblen (char*) ;
 scalar_t__ t_iseq (char*,char) ;
 scalar_t__ t_isspace (char*) ;
 char* tsearch_readline (int *) ;
 int tsearch_readline_begin (int *,char const*) ;
 int tsearch_readline_end (int *) ;

__attribute__((used)) static void
thesaurusRead(const char *filename, DictThesaurus *d)
{
 tsearch_readline_state trst;
 uint32 idsubst = 0;
 bool useasis = 0;
 char *line;

 filename = get_tsearch_config_filename(filename, "ths");
 if (!tsearch_readline_begin(&trst, filename))
  ereport(ERROR,
    (errcode(ERRCODE_CONFIG_FILE_ERROR),
     errmsg("could not open thesaurus file \"%s\": %m",
      filename)));

 while ((line = tsearch_readline(&trst)) != ((void*)0))
 {
  char *ptr;
  int state = TR_WAITLEX;
  char *beginwrd = ((void*)0);
  uint32 posinsubst = 0;
  uint32 nwrd = 0;

  ptr = line;


  while (*ptr && t_isspace(ptr))
   ptr += pg_mblen(ptr);

  if (t_iseq(ptr, '#') || *ptr == '\0' ||
   t_iseq(ptr, '\n') || t_iseq(ptr, '\r'))
  {
   pfree(line);
   continue;
  }

  while (*ptr)
  {
   if (state == TR_WAITLEX)
   {
    if (t_iseq(ptr, ':'))
    {
     if (posinsubst == 0)
      ereport(ERROR,
        (errcode(ERRCODE_CONFIG_FILE_ERROR),
         errmsg("unexpected delimiter")));
     state = TR_WAITSUBS;
    }
    else if (!t_isspace(ptr))
    {
     beginwrd = ptr;
     state = TR_INLEX;
    }
   }
   else if (state == TR_INLEX)
   {
    if (t_iseq(ptr, ':'))
    {
     newLexeme(d, beginwrd, ptr, idsubst, posinsubst++);
     state = TR_WAITSUBS;
    }
    else if (t_isspace(ptr))
    {
     newLexeme(d, beginwrd, ptr, idsubst, posinsubst++);
     state = TR_WAITLEX;
    }
   }
   else if (state == TR_WAITSUBS)
   {
    if (t_iseq(ptr, '*'))
    {
     useasis = 1;
     state = TR_INSUBS;
     beginwrd = ptr + pg_mblen(ptr);
    }
    else if (t_iseq(ptr, '\\'))
    {
     useasis = 0;
     state = TR_INSUBS;
     beginwrd = ptr + pg_mblen(ptr);
    }
    else if (!t_isspace(ptr))
    {
     useasis = 0;
     beginwrd = ptr;
     state = TR_INSUBS;
    }
   }
   else if (state == TR_INSUBS)
   {
    if (t_isspace(ptr))
    {
     if (ptr == beginwrd)
      ereport(ERROR,
        (errcode(ERRCODE_CONFIG_FILE_ERROR),
         errmsg("unexpected end of line or lexeme")));
     addWrd(d, beginwrd, ptr, idsubst, nwrd++, posinsubst, useasis);
     state = TR_WAITSUBS;
    }
   }
   else
    elog(ERROR, "unrecognized thesaurus state: %d", state);

   ptr += pg_mblen(ptr);
  }

  if (state == TR_INSUBS)
  {
   if (ptr == beginwrd)
    ereport(ERROR,
      (errcode(ERRCODE_CONFIG_FILE_ERROR),
       errmsg("unexpected end of line or lexeme")));
   addWrd(d, beginwrd, ptr, idsubst, nwrd++, posinsubst, useasis);
  }

  idsubst++;

  if (!(nwrd && posinsubst))
   ereport(ERROR,
     (errcode(ERRCODE_CONFIG_FILE_ERROR),
      errmsg("unexpected end of line")));






  if (nwrd != (uint16) nwrd || posinsubst != (uint16) posinsubst)
   ereport(ERROR,
     (errcode(ERRCODE_CONFIG_FILE_ERROR),
      errmsg("too many lexemes in thesaurus entry")));

  pfree(line);
 }

 d->nsubst = idsubst;

 tsearch_readline_end(&trst);
}

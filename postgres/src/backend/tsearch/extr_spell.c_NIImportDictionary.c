
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsearch_readline_state ;
typedef int IspellDict ;


 int ERRCODE_CONFIG_FILE_ERROR ;
 int ERROR ;
 int NIAddSpell (int *,char*,char const*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*) ;
 char* findchar (char*,char) ;
 char* lowerstr_ctx (int *,char*) ;
 int pfree (char*) ;
 int pg_mblen (char*) ;
 scalar_t__ t_isprint (char*) ;
 scalar_t__ t_isspace (char*) ;
 char* tsearch_readline (int *) ;
 int tsearch_readline_begin (int *,char const*) ;
 int tsearch_readline_end (int *) ;

void
NIImportDictionary(IspellDict *Conf, const char *filename)
{
 tsearch_readline_state trst;
 char *line;

 if (!tsearch_readline_begin(&trst, filename))
  ereport(ERROR,
    (errcode(ERRCODE_CONFIG_FILE_ERROR),
     errmsg("could not open dictionary file \"%s\": %m",
      filename)));

 while ((line = tsearch_readline(&trst)) != ((void*)0))
 {
  char *s,
       *pstr;


  const char *flag;


  flag = ((void*)0);
  if ((s = findchar(line, '/')))
  {
   *s++ = '\0';
   flag = s;
   while (*s)
   {

    if (pg_mblen(s) == 1 && t_isprint(s) && !t_isspace(s))
     s++;
    else
    {
     *s = '\0';
     break;
    }
   }
  }
  else
   flag = "";


  s = line;
  while (*s)
  {
   if (t_isspace(s))
   {
    *s = '\0';
    break;
   }
   s += pg_mblen(s);
  }
  pstr = lowerstr_ctx(Conf, line);

  NIAddSpell(Conf, pstr, flag);
  pfree(pstr);

  pfree(line);
 }
 tsearch_readline_end(&trst);
}

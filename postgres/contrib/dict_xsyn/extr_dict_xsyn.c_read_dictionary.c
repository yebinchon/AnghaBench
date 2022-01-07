
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int tsearch_readline_state ;
struct TYPE_7__ {int len; TYPE_1__* syn; int matchsynonyms; scalar_t__ matchorig; } ;
struct TYPE_6__ {int value; int key; } ;
typedef TYPE_1__ Syn ;
typedef TYPE_2__ DictSyn ;


 int ERRCODE_CONFIG_FILE_ERROR ;
 int ERROR ;
 int compare_syn ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char*) ;
 char* find_word (char*,char**) ;
 char* get_tsearch_config_filename (char const*,char*) ;
 char* lowerstr (char*) ;
 scalar_t__ palloc (int) ;
 int pfree (char*) ;
 int pnstrdup (char*,int) ;
 int pstrdup (char*) ;
 int qsort (TYPE_1__*,int,int,int ) ;
 scalar_t__ repalloc (TYPE_1__*,int) ;
 char* tsearch_readline (int *) ;
 int tsearch_readline_begin (int *,char*) ;
 int tsearch_readline_end (int *) ;

__attribute__((used)) static void
read_dictionary(DictSyn *d, const char *filename)
{
 char *real_filename = get_tsearch_config_filename(filename, "rules");
 tsearch_readline_state trst;
 char *line;
 int cur = 0;

 if (!tsearch_readline_begin(&trst, real_filename))
  ereport(ERROR,
    (errcode(ERRCODE_CONFIG_FILE_ERROR),
     errmsg("could not open synonym file \"%s\": %m",
      real_filename)));

 while ((line = tsearch_readline(&trst)) != ((void*)0))
 {
  char *value;
  char *key;
  char *pos;
  char *end;

  if (*line == '\0')
   continue;

  value = lowerstr(line);
  pfree(line);

  pos = value;
  while ((key = find_word(pos, &end)) != ((void*)0))
  {

   if (cur == d->len)
   {
    d->len = (d->len > 0) ? 2 * d->len : 16;
    if (d->syn)
     d->syn = (Syn *) repalloc(d->syn, sizeof(Syn) * d->len);
    else
     d->syn = (Syn *) palloc(sizeof(Syn) * d->len);
   }


   if (pos != value || d->matchorig)
   {
    d->syn[cur].key = pnstrdup(key, end - key);
    d->syn[cur].value = pstrdup(value);

    cur++;
   }

   pos = end;


   if (!d->matchsynonyms)
    break;
  }

  pfree(value);
 }

 tsearch_readline_end(&trst);

 d->len = cur;
 if (cur > 1)
  qsort(d->syn, d->len, sizeof(Syn), compare_syn);

 pfree(real_filename);
}

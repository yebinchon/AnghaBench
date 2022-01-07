
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tsearch_readline_state ;
struct TYPE_3__ {int len; char** stop; } ;
typedef TYPE_1__ StopList ;


 int ERRCODE_CONFIG_FILE_ERROR ;
 int ERROR ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char*) ;
 char* get_tsearch_config_filename (char const*,char*) ;
 scalar_t__ palloc (int) ;
 int pfree (char*) ;
 int pg_mblen (char*) ;
 int pg_qsort_strcmp ;
 int qsort (char**,scalar_t__,int,int ) ;
 scalar_t__ repalloc (void*,int) ;
 int t_isspace (char*) ;
 char* tsearch_readline (int *) ;
 int tsearch_readline_begin (int *,char*) ;
 int tsearch_readline_end (int *) ;

void
readstoplist(const char *fname, StopList *s, char *(*wordop) (const char *))
{
 char **stop = ((void*)0);

 s->len = 0;
 if (fname && *fname)
 {
  char *filename = get_tsearch_config_filename(fname, "stop");
  tsearch_readline_state trst;
  char *line;
  int reallen = 0;

  if (!tsearch_readline_begin(&trst, filename))
   ereport(ERROR,
     (errcode(ERRCODE_CONFIG_FILE_ERROR),
      errmsg("could not open stop-word file \"%s\": %m",
       filename)));

  while ((line = tsearch_readline(&trst)) != ((void*)0))
  {
   char *pbuf = line;


   while (*pbuf && !t_isspace(pbuf))
    pbuf += pg_mblen(pbuf);
   *pbuf = '\0';


   if (*line == '\0')
   {
    pfree(line);
    continue;
   }

   if (s->len >= reallen)
   {
    if (reallen == 0)
    {
     reallen = 64;
     stop = (char **) palloc(sizeof(char *) * reallen);
    }
    else
    {
     reallen *= 2;
     stop = (char **) repalloc((void *) stop,
             sizeof(char *) * reallen);
    }
   }

   if (wordop)
   {
    stop[s->len] = wordop(line);
    if (stop[s->len] != line)
     pfree(line);
   }
   else
    stop[s->len] = line;

   (s->len)++;
  }

  tsearch_readline_end(&trst);
  pfree(filename);
 }

 s->stop = stop;


 if (s->stop && s->len > 0)
  qsort(s->stop, s->len, sizeof(char *), pg_qsort_strcmp);
}

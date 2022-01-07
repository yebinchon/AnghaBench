
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int timebuf ;
typedef int time_t ;
struct TYPE_7__ {scalar_t__ pager; } ;
struct TYPE_8__ {char* title; TYPE_1__ topt; } ;
typedef TYPE_2__ printQueryOpt ;
struct TYPE_10__ {TYPE_2__ popt; } ;
struct TYPE_9__ {scalar_t__ len; int data; } ;
typedef TYPE_3__* PQExpBuffer ;


 long Min (long,long) ;
 int PSQLexecWatch (int ,TYPE_2__*) ;
 char* _ (char*) ;
 scalar_t__ cancel_pressed ;
 int localtime (int *) ;
 int pg_free (char*) ;
 int pg_log_error (char*) ;
 char* pg_malloc (int) ;
 int pg_usleep (long) ;
 TYPE_4__ pset ;
 int sigint_interrupt_enabled ;
 int sigint_interrupt_jmp ;
 scalar_t__ sigsetjmp (int ,int) ;
 int snprintf (char*,int,char*,char const*,...) ;
 int strftime (char*,int,char const*,int ) ;
 int strlen (char const*) ;
 int time (int *) ;

__attribute__((used)) static bool
do_watch(PQExpBuffer query_buf, double sleep)
{
 long sleep_ms = (long) (sleep * 1000);
 printQueryOpt myopt = pset.popt;
 const char *strftime_fmt;
 const char *user_title;
 char *title;
 int title_len;
 int res = 0;

 if (!query_buf || query_buf->len <= 0)
 {
  pg_log_error("\\watch cannot be used with an empty query");
  return 0;
 }






 strftime_fmt = "%c";





 myopt.topt.pager = 0;






 user_title = myopt.title;
 title_len = (user_title ? strlen(user_title) : 0) + 256;
 title = pg_malloc(title_len);

 for (;;)
 {
  time_t timer;
  char timebuf[128];
  long i;






  timer = time(((void*)0));
  strftime(timebuf, sizeof(timebuf), strftime_fmt, localtime(&timer));

  if (user_title)
   snprintf(title, title_len, _("%s\t%s (every %gs)\n"),
      user_title, timebuf, sleep);
  else
   snprintf(title, title_len, _("%s (every %gs)\n"),
      timebuf, sleep);
  myopt.title = title;


  res = PSQLexecWatch(query_buf->data, &myopt);





  if (res <= 0)
   break;






  if (sigsetjmp(sigint_interrupt_jmp, 1) != 0)
   break;






  sigint_interrupt_enabled = 1;
  i = sleep_ms;
  while (i > 0)
  {
   long s = Min(i, 1000L);

   pg_usleep(s * 1000L);
   if (cancel_pressed)
    break;
   i -= s;
  }
  sigint_interrupt_enabled = 0;
 }

 pg_free(title);
 return (res >= 0);
}

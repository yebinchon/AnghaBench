
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GetCurrentStatementStartTimestamp () ;
 int GetCurrentTimestamp () ;
 int MAX_RANDOM_VALUE ;
 int TimestampDifference (int ,int ,long*,int*) ;
 scalar_t__ log_duration ;
 int log_min_duration_sample ;
 int log_min_duration_statement ;
 int log_statement_sample_rate ;
 int random () ;
 int snprintf (char*,int,char*,long,int) ;
 scalar_t__ xact_is_sampled ;

int
check_log_duration(char *msec_str, bool was_logged)
{
 if (log_duration || log_min_duration_sample >= 0 ||
  log_min_duration_statement >= 0 || xact_is_sampled)
 {
  long secs;
  int usecs;
  int msecs;
  bool exceeded_duration;
  bool exceeded_sample_duration;
  bool in_sample = 0;

  TimestampDifference(GetCurrentStatementStartTimestamp(),
       GetCurrentTimestamp(),
       &secs, &usecs);
  msecs = usecs / 1000;






  exceeded_duration = (log_min_duration_statement == 0 ||
        (log_min_duration_statement > 0 &&
         (secs > log_min_duration_statement / 1000 ||
          secs * 1000 + msecs >= log_min_duration_statement)));

  exceeded_sample_duration = (log_min_duration_sample == 0 ||
         (log_min_duration_sample > 0 &&
          (secs > log_min_duration_sample / 1000 ||
           secs * 1000 + msecs >= log_min_duration_sample)));






  if (exceeded_sample_duration)
   in_sample = log_statement_sample_rate != 0 &&
    (log_statement_sample_rate == 1 ||
     random() <= log_statement_sample_rate * MAX_RANDOM_VALUE);

  if (exceeded_duration || in_sample || log_duration || xact_is_sampled)
  {
   snprintf(msec_str, 32, "%ld.%03d",
      secs * 1000 + msecs, usecs % 1000);
   if ((exceeded_duration || in_sample || xact_is_sampled) && !was_logged)
    return 2;
   else
    return 1;
  }
 }

 return 0;
}

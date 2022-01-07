
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timestamp ;
typedef int interval ;
typedef scalar_t__ date ;


 int ECPGdebug (int,int ) ;
 scalar_t__ INT_MIN ;
 int PGTYPESchar_free (char*) ;
 int PGTYPESdate_free (scalar_t__*) ;
 scalar_t__ PGTYPESdate_from_asc (char*,char**) ;
 scalar_t__ PGTYPESdate_from_timestamp (int ) ;
 scalar_t__* PGTYPESdate_new () ;
 char* PGTYPESdate_to_asc (scalar_t__) ;
 int PGTYPESinterval_copy (int *,int *) ;
 int PGTYPESinterval_free (int *) ;
 int * PGTYPESinterval_from_asc (scalar_t__,char**) ;
 int * PGTYPESinterval_new () ;
 char* PGTYPESinterval_to_asc (int *) ;
 int PGTYPEStimestamp_add_interval (int *,int *,int *) ;
 int PGTYPEStimestamp_from_asc (char*,int *) ;
 char* PGTYPEStimestamp_to_asc (int ) ;
 char** dates ;
 scalar_t__ errno ;
 int free (char*) ;
 scalar_t__* intervals ;
 char* malloc (int) ;
 int printf (char*,...) ;
 int sprintf (char*,char*,char*,char*) ;
 int stderr ;
 int strlen (char*) ;
 char** times ;

int
main(void)
{
 date date1 ;
 timestamp ts1 , ts2 ;
 char * text ;
 interval * i1 ;
 date * dc ;


 int i, j;
 char *endptr;

 ECPGdebug(1, stderr);

 ts1 = PGTYPEStimestamp_from_asc("2003-12-04 17:34:29", ((void*)0));
 text = PGTYPEStimestamp_to_asc(ts1);

 printf("timestamp: %s\n", text);
 PGTYPESchar_free(text);

 date1 = PGTYPESdate_from_timestamp(ts1);
 dc = PGTYPESdate_new();
 *dc = date1;
 text = PGTYPESdate_to_asc(*dc);
 printf("Date of timestamp: %s\n", text);
 PGTYPESchar_free(text);
 PGTYPESdate_free(dc);

 for (i = 0; dates[i]; i++)
 {
  bool err = 0;
  date1 = PGTYPESdate_from_asc(dates[i], &endptr);
  if (date1 == INT_MIN) {
   err = 1;
  }
  text = PGTYPESdate_to_asc(date1);
  printf("Date[%d]: %s (%c - %c)\n",
     i, err ? "-" : text,
     endptr ? 'N' : 'Y',
     err ? 'T' : 'F');
  PGTYPESchar_free(text);
  if (!err)
  {
   for (j = 0; times[j]; j++)
   {
    int length = strlen(dates[i])
      + 1
      + strlen(times[j])
      + 1;
    char* t = malloc(length);
    sprintf(t, "%s %s", dates[i], times[j]);
    ts1 = PGTYPEStimestamp_from_asc(t, ((void*)0));
    text = PGTYPEStimestamp_to_asc(ts1);
    printf("TS[%d,%d]: %s\n",
           i, j, errno ? "-" : text);
    PGTYPESchar_free(text);
    free(t);
   }
  }
 }

 ts1 = PGTYPEStimestamp_from_asc("2004-04-04 23:23:23", ((void*)0));

 for (i = 0; intervals[i]; i++)
 {
  interval *ic;
  i1 = PGTYPESinterval_from_asc(intervals[i], &endptr);
  if (*endptr)
   printf("endptr set to %s\n", endptr);
  if (!i1)
  {
   printf("Error parsing interval %d\n", i);
   continue;
  }
  j = PGTYPEStimestamp_add_interval(&ts1, i1, &ts2);
  if (j < 0)
   continue;
  text = PGTYPESinterval_to_asc(i1);
  printf("interval[%d]: %s\n", i, text ? text : "-");
  PGTYPESchar_free(text);

  ic = PGTYPESinterval_new();
  PGTYPESinterval_copy(i1, ic);
  text = PGTYPESinterval_to_asc(i1);
  printf("interval_copy[%d]: %s\n", i, text ? text : "-");
  PGTYPESchar_free(text);
  PGTYPESinterval_free(ic);
  PGTYPESinterval_free(i1);
 }

 return 0;
}

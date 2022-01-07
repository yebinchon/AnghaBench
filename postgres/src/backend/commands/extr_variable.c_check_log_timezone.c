
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pg_tz ;
typedef int GucSource ;


 int GUC_check_errdetail (char*) ;
 int GUC_check_errmsg (char*,char*) ;
 void* malloc (int) ;
 int pg_tz_acceptable (int *) ;
 int * pg_tzset (char*) ;

bool
check_log_timezone(char **newval, void **extra, GucSource source)
{
 pg_tz *new_tz;




 new_tz = pg_tzset(*newval);

 if (!new_tz)
 {

  return 0;
 }

 if (!pg_tz_acceptable(new_tz))
 {
  GUC_check_errmsg("time zone \"%s\" appears to use leap seconds",
       *newval);
  GUC_check_errdetail("PostgreSQL does not support leap seconds.");
  return 0;
 }




 *extra = malloc(sizeof(pg_tz *));
 if (!*extra)
  return 0;
 *((pg_tz **) *extra) = new_tz;

 return 1;
}

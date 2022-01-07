
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int time_t ;


 int TIMESTAMP_MAGIC ;
 scalar_t__ errno ;
 int fprintf (int ,char*) ;
 char* getenv (char*) ;
 int stderr ;
 int strtoull (char*,char**,int) ;
 int time (int*) ;

uint32_t jboot_timestamp(void)
{
 char *env = getenv("SOURCE_DATE_EPOCH");
 char *endptr = env;
 time_t fixed_timestamp = -1;
 errno = 0;

 if (env && *env) {
  fixed_timestamp = strtoull(env, &endptr, 10);

  if (errno || (endptr && *endptr != '\0')) {
   fprintf(stderr, "Invalid SOURCE_DATE_EPOCH");
   fixed_timestamp = -1;
  }
 }

 if (fixed_timestamp == -1)
  time(&fixed_timestamp);

 return (((uint32_t) fixed_timestamp) - TIMESTAMP_MAGIC) >> 2;
}

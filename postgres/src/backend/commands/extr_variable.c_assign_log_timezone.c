
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pg_tz ;


 int * log_timezone ;

void
assign_log_timezone(const char *newval, void *extra)
{
 log_timezone = *((pg_tz **) extra);
}

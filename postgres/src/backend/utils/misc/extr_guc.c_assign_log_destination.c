
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Log_destination ;

__attribute__((used)) static void
assign_log_destination(const char *newval, void *extra)
{
 Log_destination = *((int *) extra);
}

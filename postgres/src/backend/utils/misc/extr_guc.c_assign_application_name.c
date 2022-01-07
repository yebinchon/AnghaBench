
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pgstat_report_appname (char const*) ;

__attribute__((used)) static void
assign_application_name(const char *newval, void *extra)
{

 pgstat_report_appname(newval);
}

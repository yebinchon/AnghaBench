
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PG_REPORT ;
 int fflush (int ) ;
 int report_status (int ,char*) ;
 int stdout ;

void
check_ok(void)
{

 report_status(PG_REPORT, "ok");
 fflush(stdout);
}

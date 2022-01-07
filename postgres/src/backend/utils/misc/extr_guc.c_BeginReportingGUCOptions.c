
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_generic {int flags; } ;


 scalar_t__ DestRemote ;
 int FrontendProtocol ;
 int GUC_REPORT ;
 int PG_PROTOCOL_MAJOR (int ) ;
 int ReportGUCOption (struct config_generic*) ;
 struct config_generic** guc_variables ;
 int num_guc_variables ;
 int reporting_enabled ;
 scalar_t__ whereToSendOutput ;

void
BeginReportingGUCOptions(void)
{
 int i;





 if (whereToSendOutput != DestRemote ||
  PG_PROTOCOL_MAJOR(FrontendProtocol) < 3)
  return;

 reporting_enabled = 1;


 for (i = 0; i < num_guc_variables; i++)
 {
  struct config_generic *conf = guc_variables[i];

  if (conf->flags & GUC_REPORT)
   ReportGUCOption(conf);
 }
}

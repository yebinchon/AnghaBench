
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GucSource ;
typedef scalar_t__ GucContext ;


 scalar_t__ PGC_POSTMASTER ;
 int SetConfigOption (char*,char*,scalar_t__,int ) ;
 int sprintf (char*,char*,int) ;

void
set_debug_options(int debug_flag, GucContext context, GucSource source)
{
 if (debug_flag > 0)
 {
  char debugstr[64];

  sprintf(debugstr, "debug%d", debug_flag);
  SetConfigOption("log_min_messages", debugstr, context, source);
 }
 else
  SetConfigOption("log_min_messages", "notice", context, source);

 if (debug_flag >= 1 && context == PGC_POSTMASTER)
 {
  SetConfigOption("log_connections", "true", context, source);
  SetConfigOption("log_disconnections", "true", context, source);
 }
 if (debug_flag >= 2)
  SetConfigOption("log_statement", "all", context, source);
 if (debug_flag >= 3)
  SetConfigOption("debug_print_parse", "true", context, source);
 if (debug_flag >= 4)
  SetConfigOption("debug_print_plan", "true", context, source);
 if (debug_flag >= 5)
  SetConfigOption("debug_print_rewritten", "true", context, source);
}

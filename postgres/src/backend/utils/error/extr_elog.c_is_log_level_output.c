
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERROR ;
 int FATAL ;
 int LOG ;
 int LOG_SERVER_ONLY ;

__attribute__((used)) static bool
is_log_level_output(int elevel, int log_min_level)
{
 if (elevel == LOG || elevel == LOG_SERVER_ONLY)
 {
  if (log_min_level == LOG || log_min_level <= ERROR)
   return 1;
 }
 else if (log_min_level == LOG)
 {

  if (elevel >= FATAL)
   return 1;
 }

 else if (elevel >= log_min_level)
  return 1;

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* optarg ;

const char *
get_stats_option_name(const char *arg)
{
 switch (arg[0])
 {
  case 'p':
   if (optarg[1] == 'a')
    return "log_parser_stats";
   else if (optarg[1] == 'l')
    return "log_planner_stats";
   break;

  case 'e':
   return "log_executor_stats";
   break;
 }

 return ((void*)0);
}

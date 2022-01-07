
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ log_handler_t ;


 scalar_t__ def_log_handler ;
 scalar_t__ log_handler ;
 void* log_param ;

void base_set_log_handler(log_handler_t handler, void *param)
{
 if (!handler)
  handler = def_log_handler;

 log_param = param;
 log_handler = handler;
}

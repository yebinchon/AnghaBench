
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int log_handler_t ;


 int log_handler ;
 void* log_param ;

void base_get_log_handler(log_handler_t *handler, void **param)
{
 if (handler)
  *handler = log_handler;
 if (param)
  *param = log_param;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int scripting_log_handler_t ;


 int callback ;
 void* param ;

void obs_scripting_set_log_callback(scripting_log_handler_t handler,
        void *log_param)
{
 callback = handler;
 param = log_param;
}

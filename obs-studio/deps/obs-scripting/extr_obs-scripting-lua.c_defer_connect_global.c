
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct script_callback {int extra; } ;
typedef int signal_handler_t ;


 int * calldata_ptr (int *,char*) ;
 int calldata_signal_callback_global ;
 int signal_handler_connect_global (int *,int ,struct script_callback*) ;

__attribute__((used)) static void defer_connect_global(void *p_cb)
{
 struct script_callback *cb = p_cb;

 signal_handler_t *handler = calldata_ptr(&cb->extra, "handler");
 signal_handler_connect_global(handler, calldata_signal_callback_global,
          cb);
}

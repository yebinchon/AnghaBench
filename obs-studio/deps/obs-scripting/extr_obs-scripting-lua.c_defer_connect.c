
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct script_callback {int extra; } ;
typedef int signal_handler_t ;


 int * calldata_ptr (int *,char*) ;
 int calldata_signal_callback ;
 char* calldata_string (int *,char*) ;
 int signal_handler_connect (int *,char const*,int ,struct script_callback*) ;

__attribute__((used)) static void defer_connect(void *p_cb)
{
 struct script_callback *cb = p_cb;

 signal_handler_t *handler = calldata_ptr(&cb->extra, "handler");
 const char *signal = calldata_string(&cb->extra, "signal");
 signal_handler_connect(handler, signal, calldata_signal_callback, cb);
}

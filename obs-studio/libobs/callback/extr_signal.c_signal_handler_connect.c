
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int signal_handler_t ;
typedef int signal_callback_t ;


 int signal_handler_connect_internal (int *,char const*,int ,void*,int) ;

void signal_handler_connect(signal_handler_t *handler, const char *signal,
       signal_callback_t callback, void *data)
{
 signal_handler_connect_internal(handler, signal, callback, data, 0);
}

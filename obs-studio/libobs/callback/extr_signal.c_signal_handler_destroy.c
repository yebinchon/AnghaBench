
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int refs; } ;
typedef TYPE_1__ signal_handler_t ;


 scalar_t__ os_atomic_dec_long (int *) ;
 int signal_handler_actually_destroy (TYPE_1__*) ;

void signal_handler_destroy(signal_handler_t *handler)
{
 if (handler && os_atomic_dec_long(&handler->refs) == 0) {
  signal_handler_actually_destroy(handler);
 }
}

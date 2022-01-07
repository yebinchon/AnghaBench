
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int interrupt_setting_t ;
struct TYPE_3__ {scalar_t__ end; scalar_t__ start; scalar_t__ length; } ;
typedef TYPE_1__ byteQueue_t ;
typedef scalar_t__ byteQueueIndex_t ;


 int restore_interrupt_setting (int ) ;
 int store_and_clear_interrupt () ;

byteQueueIndex_t bytequeue_length(byteQueue_t* queue) {
    byteQueueIndex_t len;
    interrupt_setting_t setting = store_and_clear_interrupt();
    if (queue->end >= queue->start)
        len = queue->end - queue->start;
    else
        len = (queue->length - queue->start) + queue->end;
    restore_interrupt_setting(setting);
    return len;
}

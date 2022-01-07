
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int interrupt_setting_t ;
struct TYPE_3__ {int start; int length; } ;
typedef TYPE_1__ byteQueue_t ;
typedef int byteQueueIndex_t ;


 int restore_interrupt_setting (int ) ;
 int store_and_clear_interrupt () ;

void bytequeue_remove(byteQueue_t* queue, byteQueueIndex_t numToRemove) {
    interrupt_setting_t setting = store_and_clear_interrupt();
    queue->start = (queue->start + numToRemove) % queue->length;
    restore_interrupt_setting(setting);
}

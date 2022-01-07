
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ waiting_buffer_head ;
 scalar_t__ waiting_buffer_tail ;

void waiting_buffer_clear(void) {
    waiting_buffer_head = 0;
    waiting_buffer_tail = 0;
}

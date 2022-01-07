
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {scalar_t__ pressed; } ;
struct TYPE_4__ {TYPE_1__ event; } ;


 int WAITING_BUFFER_SIZE ;
 TYPE_2__* waiting_buffer ;
 int waiting_buffer_head ;
 int waiting_buffer_tail ;

__attribute__((unused)) bool waiting_buffer_has_anykey_pressed(void) {
    for (uint8_t i = waiting_buffer_tail; i != waiting_buffer_head; i = (i + 1) % WAITING_BUFFER_SIZE) {
        if (waiting_buffer[i].event.pressed) return 1;
    }
    return 0;
}

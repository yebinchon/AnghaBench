
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_13__ {int pressed; int key; } ;
struct TYPE_9__ {int count; } ;
struct TYPE_10__ {int pressed; } ;
struct TYPE_12__ {TYPE_2__ tap; TYPE_3__ event; } ;
struct TYPE_8__ {int count; } ;
struct TYPE_11__ {TYPE_1__ tap; TYPE_7__ event; } ;


 scalar_t__ IS_TAPPING_KEY (int ) ;
 int WAITING_BUFFER_SIZE ;
 scalar_t__ WITHIN_TAPPING_TERM (TYPE_7__) ;
 int debug (char*) ;
 int debug_dec (int) ;
 int debug_waiting_buffer () ;
 int process_record (TYPE_5__*) ;
 TYPE_5__ tapping_key ;
 TYPE_4__* waiting_buffer ;
 int waiting_buffer_head ;
 int waiting_buffer_tail ;

void waiting_buffer_scan_tap(void) {

    if (tapping_key.tap.count > 0) return;

    if (!tapping_key.event.pressed) return;

    for (uint8_t i = waiting_buffer_tail; i != waiting_buffer_head; i = (i + 1) % WAITING_BUFFER_SIZE) {
        if (IS_TAPPING_KEY(waiting_buffer[i].event.key) && !waiting_buffer[i].event.pressed && WITHIN_TAPPING_TERM(waiting_buffer[i].event)) {
            tapping_key.tap.count = 1;
            waiting_buffer[i].tap.count = 1;
            process_record(&tapping_key);

            debug("waiting_buffer_scan_tap: found at [");
            debug_dec(i);
            debug("]\n");
            debug_waiting_buffer();
            return;
        }
    }
}

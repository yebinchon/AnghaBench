
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t uint8_t ;
struct TYPE_7__ {int report_id; int mods; } ;
struct TYPE_8__ {int * raw; int report_id; TYPE_1__ nkro; int mods; } ;
typedef TYPE_2__ report_keyboard_t ;
struct TYPE_10__ {int (* send_keyboard ) (TYPE_2__*) ;} ;
struct TYPE_9__ {scalar_t__ nkro; } ;


 size_t KEYBOARD_REPORT_SIZE ;
 int REPORT_ID_KEYBOARD ;
 int REPORT_ID_NKRO ;
 scalar_t__ debug_keyboard ;
 int dprint (char*) ;
 int dprintf (char*,int ) ;
 TYPE_6__* driver ;
 scalar_t__ keyboard_protocol ;
 TYPE_4__ keymap_config ;
 int stub1 (TYPE_2__*) ;

void host_keyboard_send(report_keyboard_t *report) {
    if (!driver) return;
    {



    }
    (*driver->send_keyboard)(report);

    if (debug_keyboard) {
        dprint("keyboard_report: ");
        for (uint8_t i = 0; i < KEYBOARD_REPORT_SIZE; i++) {
            dprintf("%02X ", report->raw[i]);
        }
        dprint("\n");
    }
}

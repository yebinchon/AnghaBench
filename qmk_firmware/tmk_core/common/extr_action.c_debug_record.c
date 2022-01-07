
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ interrupted; int count; } ;
struct TYPE_5__ {TYPE_1__ tap; int event; } ;
typedef TYPE_2__ keyrecord_t ;


 int debug_event (int ) ;
 int dprintf (char*,int ,char) ;

void debug_record(keyrecord_t record) {
    debug_event(record.event);

    dprintf(":%u%c", record.tap.count, (record.tap.interrupted ? '-' : ' '));

}

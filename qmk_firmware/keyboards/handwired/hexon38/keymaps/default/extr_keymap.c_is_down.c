
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pressed; } ;
struct TYPE_6__ {TYPE_1__ event; } ;
struct TYPE_7__ {TYPE_2__ record; } ;
typedef TYPE_3__ pending_key_t ;



bool is_down(pending_key_t *k) {
    return k->record.event.pressed;
}

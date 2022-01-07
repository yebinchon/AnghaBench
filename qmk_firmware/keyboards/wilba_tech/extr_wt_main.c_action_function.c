
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int count; int interrupted; } ;
struct TYPE_5__ {int pressed; } ;
struct TYPE_7__ {TYPE_2__ tap; TYPE_1__ event; } ;
typedef TYPE_3__ keyrecord_t ;




 int layer_invert (int) ;
 int layer_off (int) ;
 int layer_on (int) ;

void action_function(keyrecord_t *record, uint8_t id, uint8_t opt)
{
 switch (id)
 {
 case 129:
 case 128:
  if (record->event.pressed) {
   layer_on( id == 129 ? 1 : 2 );
   if (record->tap.count && !record->tap.interrupted) {
    if (record->tap.count >= 3) {
     layer_invert(3);
    }
   } else {
    record->tap.count = 0;
   }
  } else {
   layer_off( id == 129 ? 1 : 2 );
  }
  break;
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {int pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;




 int _ALTERNATE ;
 int _DEFAULT ;
 int print (char*) ;
 int set_single_persistent_default_layer (int ) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record)
{
    switch (keycode)
    {
    case 128:
        if (record->event.pressed)
        {
            print("mode just switched to qwerty and this is a huge string\n");
            set_single_persistent_default_layer(_DEFAULT);
        }
        return 0;
        break;
    case 129:
        if (record->event.pressed)
        {
            set_single_persistent_default_layer(_ALTERNATE);
        }
        return 0;
        break;
    }
    return 1;
}

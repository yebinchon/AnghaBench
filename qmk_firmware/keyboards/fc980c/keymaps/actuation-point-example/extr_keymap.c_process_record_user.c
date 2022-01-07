
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {scalar_t__ pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;






 int actuation_point_down () ;
 int actuation_point_up () ;
 int read_eeprom () ;
 int read_rdac () ;
 int xprintf (char*,int ) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record)
{
    if (record->event.pressed)
    {
        switch (keycode)
        {
        case 128:
        {
            actuation_point_up();
            return 0;
        }
        case 131:
        {
            actuation_point_down();
            return 0;
        }
        case 129:
        {
            xprintf("RDAC: %d", read_rdac());
            return 0;
        }
        case 130:
        {
            xprintf("EEPROM: %d", read_eeprom());
            return 0;
        }

        default:
            return 1;
        }
    }
    else
    {
        return 1;
    }
}

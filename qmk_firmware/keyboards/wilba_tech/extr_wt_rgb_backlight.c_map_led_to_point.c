
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint8_t ;
struct TYPE_5__ {int use_split_right_shift; int use_7u_spacebar; int use_split_left_shift; int use_iso_enter; int use_split_backspace; } ;
struct TYPE_4__ {int x; int y; } ;
typedef TYPE_1__ Point ;


 TYPE_3__ g_config ;
 int * g_map_led_to_point ;
 void* pgm_read_byte (size_t*) ;

void map_led_to_point( uint8_t index, Point *point )
{

    uint8_t *addr = (uint8_t*)&g_map_led_to_point[index];
    point->x = pgm_read_byte(addr);
    point->y = pgm_read_byte(addr+1);





    switch (index)
    {
        case 18+4:
            if ( g_config.use_split_backspace )
                point->x -= 8;
            break;
    }
}

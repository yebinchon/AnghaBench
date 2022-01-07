
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint8_t ;
struct TYPE_3__ {void* y; void* x; } ;
typedef TYPE_1__ Point ;


 int * g_map_led_to_point_polar ;
 void* pgm_read_byte (size_t*) ;

void map_led_to_point_polar( uint8_t index, Point *point )
{

    uint8_t *addr = (uint8_t*)&g_map_led_to_point_polar[index];
    point->x = pgm_read_byte(addr);
    point->y = pgm_read_byte(addr+1);
}

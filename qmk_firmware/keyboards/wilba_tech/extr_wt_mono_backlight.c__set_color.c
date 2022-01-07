
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint8_t ;
struct TYPE_3__ {void* s; void* h; } ;
typedef TYPE_1__ HS ;



void _set_color( HS *color, uint8_t *data )
{
    color->h = data[0];
    color->s = data[1];
}

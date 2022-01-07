
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* y_org; void* x_org; } ;
typedef TYPE_1__ xcursor_t ;
typedef void* int_fast32_t ;



void xcursor_offset(xcursor_t *data, int_fast32_t x_org, int_fast32_t y_org)
{
 data->x_org = x_org;
 data->y_org = y_org;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int x_org; int y_org; } ;
typedef TYPE_1__ xcb_xcursor_t ;



void xcb_xcursor_offset(xcb_xcursor_t *data, const int x_org, const int y_org)
{
 data->x_org = x_org;
 data->y_org = y_org;
}

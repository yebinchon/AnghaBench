
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct taskdialog_template_desc {int y_baseunit; int x_baseunit; } ;
typedef int LONG ;


 int MulDiv (int ,int ,int) ;

__attribute__((used)) static void dialogunits_to_pixels(const struct taskdialog_template_desc *desc, LONG *width, LONG *height)
{
    if (width)
        *width = MulDiv(*width, desc->x_baseunit, 4);
    if (height)
        *height = MulDiv(*height, desc->y_baseunit, 8);
}

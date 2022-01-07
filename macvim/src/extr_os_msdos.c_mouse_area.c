
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dx; int ax; scalar_t__ cx; } ;
union REGS {TYPE_1__ x; } ;


 int Columns ;
 int Rows ;
 int int86 (int,union REGS*,union REGS*) ;
 scalar_t__ mouse_avail ;
 int mouse_x_div ;
 int mouse_y_div ;

__attribute__((used)) static void
mouse_area(void)
{
    union REGS regs;

    if (mouse_avail)
    {
 regs.x.cx = 0;
 regs.x.dx = Columns * mouse_x_div - 1;
 regs.x.ax = 7;
 (void)int86(0x33, &regs, &regs);

 regs.x.cx = 0;
 regs.x.dx = Rows * mouse_y_div - 1;
 regs.x.ax = 8;
 (void)int86(0x33, &regs, &regs);
    }
}

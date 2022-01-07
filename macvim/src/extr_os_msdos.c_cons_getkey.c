
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int ah; int dl; int al; } ;
struct TYPE_3__ {int flags; } ;
union REGS {TYPE_2__ h; TYPE_1__ x; } ;


 int cons_key ;
 int intdos (union REGS*,union REGS*) ;

__attribute__((used)) static void
cons_getkey(void)
{
    union REGS regs;


    regs.h.ah = 0x06;
    regs.h.dl = 0xff;
    (void)intdos(&regs, &regs);
    if ((regs.x.flags & 0x40) == 0)
 cons_key = (regs.h.al & 0xff);
}

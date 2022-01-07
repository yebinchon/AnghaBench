
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {unsigned int cx; unsigned int dx; } ;
struct TYPE_6__ {int ah; } ;
struct TYPE_8__ {TYPE_2__ w; TYPE_1__ b; } ;
typedef TYPE_3__ REGS ;


 int Int386 (int,TYPE_3__*,TYPE_3__*) ;

void delay(unsigned msec)
{
    REGS Regs;
    unsigned usec;
    unsigned msec_this;
    while (msec)
    {
        msec_this = msec;

        if (msec_this > 4000)
        {
            msec_this = 4000;
        }

        usec = msec_this * 1000;

        Regs.b.ah = 0x86;
        Regs.w.cx = usec >> 16;
        Regs.w.dx = usec & 0xffff;
        Int386(0x15, &Regs, &Regs);

        msec -= msec_this;
    }
}

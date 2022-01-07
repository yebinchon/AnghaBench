
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_8__ {scalar_t__ es; } ;
struct TYPE_7__ {int eax; } ;
struct TYPE_9__ {TYPE_2__ w; TYPE_1__ x; } ;
typedef TYPE_3__ REGS ;
typedef int* PULONG ;
typedef int BOOLEAN ;


 int FALSE ;
 int INT386_SUCCESS (TYPE_3__) ;
 int Int386 (int,TYPE_3__*,TYPE_3__*) ;
 int TRACE (char*) ;
 int TRUE ;

__attribute__((used)) static
BOOLEAN
GetEbdaLocation(
    PULONG BaseAddress,
    PULONG Size)
{
    REGS Regs;

    TRACE("GetEbdaLocation()\n");
    Regs.x.eax = 0x0000C100;
    Int386(0x15, &Regs, &Regs);


    if (!INT386_SUCCESS(Regs))
    {
        return FALSE;
    }


    *BaseAddress = (ULONG)Regs.w.es << 4;
    *Size = 0xA0000 - *BaseAddress;
    return TRUE;
}

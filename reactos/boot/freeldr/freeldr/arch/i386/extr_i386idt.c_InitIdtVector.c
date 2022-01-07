
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int USHORT ;
typedef int ULONG ;
typedef size_t UCHAR ;
struct TYPE_2__ {int Offset; int ExtendedOffset; int Access; int Selector; } ;
typedef scalar_t__ PVOID ;


 int PMODE_CS ;
 TYPE_1__* i386Idt ;

__attribute__((used)) static
void
InitIdtVector(
    UCHAR Vector,
    PVOID ServiceHandler,
    USHORT Access)
{
    i386Idt[Vector].Offset = (ULONG)ServiceHandler & 0xffff;
    i386Idt[Vector].ExtendedOffset = (ULONG)ServiceHandler >> 16;
    i386Idt[Vector].Selector = PMODE_CS;
    i386Idt[Vector].Access = Access;
}

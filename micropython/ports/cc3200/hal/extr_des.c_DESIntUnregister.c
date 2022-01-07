
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 int ASSERT (int) ;
 scalar_t__ DES_BASE ;
 int INT_DES ;
 int IntDisable (int ) ;
 int IntUnregister (int ) ;

void
DESIntUnregister(uint32_t ui32Base)
{



    ASSERT(ui32Base == DES_BASE);




    IntDisable(INT_DES);




    IntUnregister(INT_DES);
}

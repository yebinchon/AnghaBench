
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 int ASSERT (int) ;
 int INT_SHA ;
 int IntDisable (int ) ;
 int IntUnregister (int ) ;
 scalar_t__ SHAMD5_BASE ;

void
SHAMD5IntUnregister(uint32_t ui32Base)
{



    ASSERT(ui32Base == SHAMD5_BASE);




    IntDisable(INT_SHA);




    IntUnregister(INT_SHA);
}

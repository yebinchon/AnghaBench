
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPVOID ;


 int RtlFreeHeap (int ,int ,int ) ;
 int SdbpHeap () ;
 int SdbpRemoveAllocation (int ,int,char const*) ;

void SdbpFree(LPVOID mem



    )
{



    RtlFreeHeap(SdbpHeap(), 0, mem);
}

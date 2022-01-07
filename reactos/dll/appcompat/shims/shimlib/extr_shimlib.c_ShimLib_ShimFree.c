
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PVOID ;


 int HeapFree (int ,int ,int ) ;
 int g_ShimLib_Heap ;

void ShimLib_ShimFree(PVOID pData)
{
    HeapFree(g_ShimLib_Heap, 0, pData);
}

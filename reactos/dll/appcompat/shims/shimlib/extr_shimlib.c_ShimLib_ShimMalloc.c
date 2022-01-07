
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SIZE_T ;
typedef int PVOID ;


 int HeapAlloc (int ,int ,int ) ;
 int g_ShimLib_Heap ;

PVOID ShimLib_ShimMalloc(SIZE_T dwSize)
{
    return HeapAlloc(g_ShimLib_Heap, 0, dwSize);
}

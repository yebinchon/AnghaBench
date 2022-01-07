
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SLIST_HEADER ;
typedef scalar_t__ PSLIST_HEADER ;
typedef int HINSTANCE ;


 int HeapCreate (int ,int,int ) ;
 int RtlInitializeSListHead (scalar_t__) ;
 scalar_t__ ShimLib_ShimMalloc (int) ;
 int g_ShimLib_Heap ;
 int g_ShimLib_hInstance ;
 scalar_t__ g_UsedShims ;

void ShimLib_Init(HINSTANCE hInstance)
{
    g_ShimLib_hInstance = hInstance;
    g_ShimLib_Heap = HeapCreate(0, 0x10000, 0);

    g_UsedShims = (PSLIST_HEADER)ShimLib_ShimMalloc(sizeof(SLIST_HEADER));
    RtlInitializeSListHead(g_UsedShims);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* DebugInfo; } ;
struct TYPE_7__ {TYPE_4__ csState; } ;
struct TYPE_6__ {scalar_t__* Spare; } ;
typedef TYPE_2__ StdMemAllocator ;
typedef int IMemAllocator ;


 int CoTaskMemFree (TYPE_2__*) ;
 int DeleteCriticalSection (TYPE_4__*) ;
 TYPE_2__* StdMemAllocator_from_IMemAllocator (int *) ;

__attribute__((used)) static void StdMemAllocator_Destroy(IMemAllocator *iface)
{
    StdMemAllocator *This = StdMemAllocator_from_IMemAllocator(iface);

    This->csState.DebugInfo->Spare[0] = 0;
    DeleteCriticalSection(&This->csState);

    CoTaskMemFree(This);
}

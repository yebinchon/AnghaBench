
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
struct TYPE_4__ {int ref; } ;
typedef TYPE_1__* PCRegKeySecurity ;
typedef int LONG ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 scalar_t__ InterlockedDecrement (int *) ;

__attribute__((used)) static __inline ULONG
CRegKeySecurity_fnRelease(PCRegKeySecurity obj)
{
    ULONG Ret;

    Ret = (ULONG)InterlockedDecrement((LONG*)&obj->ref);
    if (Ret == 0)
    {
        HeapFree(GetProcessHeap(),
                 0,
                 obj);
    }

    return Ret;
}

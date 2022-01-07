
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_3__ {int ref; } ;
typedef TYPE_1__* PCRegKeySecurity ;
typedef int LONG ;


 int InterlockedIncrement (int *) ;

__attribute__((used)) static __inline ULONG
CRegKeySecurity_fnAddRef(PCRegKeySecurity obj)
{
    return (ULONG)InterlockedIncrement((LONG*)&obj->ref);
}

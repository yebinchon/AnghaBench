
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ItemSize__; scalar_t__ MaxSize__; scalar_t__ Size__; int * Data__; } ;
typedef TYPE_1__* PARRAY ;
typedef int DWORD ;
typedef int BOOL ;


 int TRUE ;

__attribute__((used)) static inline BOOL ARRAY_InitWorker(PARRAY Array, DWORD ItemSize)
{
    Array->Data__ = ((void*)0);
    Array->Size__ = Array->MaxSize__ = 0;
    Array->ItemSize__ = ItemSize;

    return TRUE;
}

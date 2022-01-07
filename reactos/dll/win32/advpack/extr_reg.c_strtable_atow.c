
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int cEntries; int * pse; } ;
struct TYPE_5__ {size_t cEntries; int * pse; } ;
typedef TYPE_1__ STRTABLEW ;
typedef TYPE_2__ STRTABLEA ;
typedef int STRENTRYW ;
typedef size_t DWORD ;


 int GetProcessHeap () ;
 void* HeapAlloc (int ,int ,int) ;
 int strentry_atow (int *,int *) ;

__attribute__((used)) static STRTABLEW *strtable_atow(const STRTABLEA *atable)
{
    STRTABLEW *wtable;
    DWORD j;

    wtable = HeapAlloc(GetProcessHeap(), 0, sizeof(STRTABLEW));
    wtable->pse = HeapAlloc(GetProcessHeap(), 0, atable->cEntries * sizeof(STRENTRYW));
    wtable->cEntries = atable->cEntries;

    for (j = 0; j < wtable->cEntries; j++)
        strentry_atow(&atable->pse[j], &wtable->pse[j]);

    return wtable;
}

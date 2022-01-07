
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct list {int dummy; } ;
struct TYPE_3__ {int * lpVtbl; } ;
struct ciffenum_groups {int ref; TYPE_1__ IEnumCifGroups_iface; struct list* position; struct list* start; int * file; } ;
typedef TYPE_1__ IEnumCifGroups ;
typedef int ICifFile ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int ICifFile_AddRef (int *) ;
 int S_OK ;
 int enum_groupsVtbl ;
 struct ciffenum_groups* heap_alloc_zero (int) ;

__attribute__((used)) static HRESULT enum_groups_create(ICifFile *file, struct list *start, IEnumCifGroups **iface)
{
    struct ciffenum_groups *enumerator;

    enumerator = heap_alloc_zero(sizeof(*enumerator));
    if (!enumerator) return E_OUTOFMEMORY;

    enumerator->IEnumCifGroups_iface.lpVtbl = &enum_groupsVtbl;
    enumerator->ref = 1;
    enumerator->file = file;
    enumerator->start = start;
    enumerator->position = start;

    ICifFile_AddRef(file);

    *iface = &enumerator->IEnumCifGroups_iface;
    return S_OK;
}

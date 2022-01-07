
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct list {int dummy; } ;
struct TYPE_3__ {int * lpVtbl; } ;
struct ciffenum_components {int ref; char* group_id; TYPE_1__ IEnumCifComponents_iface; struct list* position; struct list* start; int * file; } ;
typedef TYPE_1__ IEnumCifComponents ;
typedef int ICifFile ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int ICifFile_AddRef (int *) ;
 int S_OK ;
 int enum_componentsVtbl ;
 struct ciffenum_components* heap_alloc_zero (int) ;

__attribute__((used)) static HRESULT enum_components_create(ICifFile *file, struct list *start, char *group_id, IEnumCifComponents **iface)
{
    struct ciffenum_components *enumerator;

    enumerator = heap_alloc_zero(sizeof(*enumerator));
    if (!enumerator) return E_OUTOFMEMORY;

    enumerator->IEnumCifComponents_iface.lpVtbl = &enum_componentsVtbl;
    enumerator->ref = 1;
    enumerator->file = file;
    enumerator->start = start;
    enumerator->position = start;
    enumerator->group_id = group_id;

    ICifFile_AddRef(file);

    *iface = &enumerator->IEnumCifComponents_iface;
    return S_OK;
}

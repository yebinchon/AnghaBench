
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int eoh_context; } ;
struct TYPE_5__ {int* dnulls; int dvalueslen; int nelems; int * dvalues; int fvalue; int typalign; int typbyval; int typlen; int element_type; TYPE_1__ hdr; } ;
typedef int MemoryContext ;
typedef TYPE_2__ ExpandedArrayHeader ;
typedef int Datum ;


 scalar_t__ ARR_HASNULL (int ) ;
 int MemoryContextSwitchTo (int ) ;
 int deconstruct_array (int ,int ,int ,int ,int ,int **,int**,int*) ;

void
deconstruct_expanded_array(ExpandedArrayHeader *eah)
{
 if (eah->dvalues == ((void*)0))
 {
  MemoryContext oldcxt = MemoryContextSwitchTo(eah->hdr.eoh_context);
  Datum *dvalues;
  bool *dnulls;
  int nelems;

  dnulls = ((void*)0);
  deconstruct_array(eah->fvalue,
        eah->element_type,
        eah->typlen, eah->typbyval, eah->typalign,
        &dvalues,
        ARR_HASNULL(eah->fvalue) ? &dnulls : ((void*)0),
        &nelems);
  eah->dvalues = dvalues;
  eah->dnulls = dnulls;
  eah->dvalueslen = eah->nelems = nelems;
  MemoryContextSwitchTo(oldcxt);
 }
}

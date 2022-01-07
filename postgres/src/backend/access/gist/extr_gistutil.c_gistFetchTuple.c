
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_15__ {int fetchTupdesc; int leafTupdesc; TYPE_2__* compressFn; TYPE_1__* fetchFn; int tempCxt; } ;
struct TYPE_14__ {TYPE_3__* rd_att; } ;
struct TYPE_13__ {int natts; } ;
struct TYPE_12__ {scalar_t__ fn_oid; } ;
struct TYPE_11__ {scalar_t__ fn_oid; } ;
typedef TYPE_4__* Relation ;
typedef int MemoryContext ;
typedef int IndexTuple ;
typedef int HeapTuple ;
typedef TYPE_5__ GISTSTATE ;
typedef scalar_t__ Datum ;


 int INDEX_MAX_KEYS ;
 int IndexRelationGetNumberOfKeyAttributes (TYPE_4__*) ;
 scalar_t__ InvalidOid ;
 int MemoryContextSwitchTo (int ) ;
 scalar_t__ gistFetchAtt (TYPE_5__*,int,scalar_t__,TYPE_4__*) ;
 int heap_form_tuple (int ,scalar_t__*,int*) ;
 scalar_t__ index_getattr (int ,int,int ,int*) ;

HeapTuple
gistFetchTuple(GISTSTATE *giststate, Relation r, IndexTuple tuple)
{
 MemoryContext oldcxt = MemoryContextSwitchTo(giststate->tempCxt);
 Datum fetchatt[INDEX_MAX_KEYS];
 bool isnull[INDEX_MAX_KEYS];
 int i;

 for (i = 0; i < IndexRelationGetNumberOfKeyAttributes(r); i++)
 {
  Datum datum;

  datum = index_getattr(tuple, i + 1, giststate->leafTupdesc, &isnull[i]);

  if (giststate->fetchFn[i].fn_oid != InvalidOid)
  {
   if (!isnull[i])
    fetchatt[i] = gistFetchAtt(giststate, i, datum, r);
   else
    fetchatt[i] = (Datum) 0;
  }
  else if (giststate->compressFn[i].fn_oid == InvalidOid)
  {




   if (!isnull[i])
    fetchatt[i] = datum;
   else
    fetchatt[i] = (Datum) 0;
  }
  else
  {





   isnull[i] = 1;
   fetchatt[i] = (Datum) 0;
  }
 }




 for (; i < r->rd_att->natts; i++)
 {
  fetchatt[i] = index_getattr(tuple, i + 1, giststate->leafTupdesc,
         &isnull[i]);
 }
 MemoryContextSwitchTo(oldcxt);

 return heap_form_tuple(giststate->fetchTupdesc, fetchatt, isnull);
}

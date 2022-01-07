
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int fn_oid; } ;
struct TYPE_9__ {int leafkey; int offset; int page; int rel; int key; } ;
struct TYPE_8__ {int * supportCollation; TYPE_7__* decompressFn; } ;
typedef int Relation ;
typedef int Page ;
typedef int OffsetNumber ;
typedef TYPE_1__ GISTSTATE ;
typedef TYPE_2__ GISTENTRY ;
typedef int Datum ;


 scalar_t__ DatumGetPointer (int ) ;
 int FunctionCall1Coll (TYPE_7__*,int ,int ) ;
 int OidIsValid (int ) ;
 int PointerGetDatum (TYPE_2__*) ;
 int gistentryinit (TYPE_2__,int ,int ,int ,int ,int) ;

void
gistdentryinit(GISTSTATE *giststate, int nkey, GISTENTRY *e,
      Datum k, Relation r, Page pg, OffsetNumber o,
      bool l, bool isNull)
{
 if (!isNull)
 {
  GISTENTRY *dep;

  gistentryinit(*e, k, r, pg, o, l);


  if (!OidIsValid(giststate->decompressFn[nkey].fn_oid))
   return;

  dep = (GISTENTRY *)
   DatumGetPointer(FunctionCall1Coll(&giststate->decompressFn[nkey],
             giststate->supportCollation[nkey],
             PointerGetDatum(e)));

  if (dep != e)
   gistentryinit(*e, dep->key, dep->rel, dep->page, dep->offset,
        dep->leafkey);
 }
 else
  gistentryinit(*e, (Datum) 0, r, pg, o, l);
}

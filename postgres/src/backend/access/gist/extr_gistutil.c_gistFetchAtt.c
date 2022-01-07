
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int key; } ;
struct TYPE_6__ {int * supportCollation; int * fetchFn; } ;
typedef int Relation ;
typedef int OffsetNumber ;
typedef TYPE_1__ GISTSTATE ;
typedef TYPE_2__ GISTENTRY ;
typedef int Datum ;


 scalar_t__ DatumGetPointer (int ) ;
 int FunctionCall1Coll (int *,int ,int ) ;
 int PointerGetDatum (TYPE_2__*) ;
 int gistentryinit (TYPE_2__,int ,int ,int *,int ,int) ;

__attribute__((used)) static Datum
gistFetchAtt(GISTSTATE *giststate, int nkey, Datum k, Relation r)
{
 GISTENTRY fentry;
 GISTENTRY *fep;

 gistentryinit(fentry, k, r, ((void*)0), (OffsetNumber) 0, 0);

 fep = (GISTENTRY *)
  DatumGetPointer(FunctionCall1Coll(&giststate->fetchFn[nkey],
            giststate->supportCollation[nkey],
            PointerGetDatum(&fentry)));


 return fep->key;
}

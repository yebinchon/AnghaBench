
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_14__ ;


struct TYPE_20__ {scalar_t__ key; } ;
struct TYPE_19__ {int nonLeafTupdesc; int leafTupdesc; int * supportCollation; TYPE_14__* compressFn; } ;
struct TYPE_18__ {int t_tid; } ;
struct TYPE_17__ {TYPE_1__* rd_att; } ;
struct TYPE_16__ {int natts; } ;
struct TYPE_15__ {int fn_oid; } ;
typedef TYPE_2__* Relation ;
typedef int OffsetNumber ;
typedef TYPE_3__* IndexTuple ;
typedef TYPE_4__ GISTSTATE ;
typedef TYPE_5__ GISTENTRY ;
typedef scalar_t__ Datum ;


 scalar_t__ DatumGetPointer (int ) ;
 int FunctionCall1Coll (TYPE_14__*,int ,int ) ;
 int INDEX_MAX_KEYS ;
 int IndexRelationGetNumberOfKeyAttributes (TYPE_2__*) ;
 int ItemPointerSetOffsetNumber (int *,int) ;
 scalar_t__ OidIsValid (int ) ;
 int PointerGetDatum (TYPE_5__*) ;
 int gistentryinit (TYPE_5__,scalar_t__,TYPE_2__*,int *,int ,int) ;
 TYPE_3__* index_form_tuple (int ,scalar_t__*,int*) ;

IndexTuple
gistFormTuple(GISTSTATE *giststate, Relation r,
     Datum attdata[], bool isnull[], bool isleaf)
{
 Datum compatt[INDEX_MAX_KEYS];
 int i;
 IndexTuple res;




 for (i = 0; i < IndexRelationGetNumberOfKeyAttributes(r); i++)
 {
  if (isnull[i])
   compatt[i] = (Datum) 0;
  else
  {
   GISTENTRY centry;
   GISTENTRY *cep;

   gistentryinit(centry, attdata[i], r, ((void*)0), (OffsetNumber) 0,
        isleaf);

   if (OidIsValid(giststate->compressFn[i].fn_oid))
    cep = (GISTENTRY *)
     DatumGetPointer(FunctionCall1Coll(&giststate->compressFn[i],
               giststate->supportCollation[i],
               PointerGetDatum(&centry)));
   else
    cep = &centry;
   compatt[i] = cep->key;
  }
 }

 if (isleaf)
 {



  for (; i < r->rd_att->natts; i++)
  {
   if (isnull[i])
    compatt[i] = (Datum) 0;
   else
    compatt[i] = attdata[i];
  }
 }

 res = index_form_tuple(isleaf ? giststate->leafTupdesc :
         giststate->nonLeafTupdesc,
         compatt, isnull);





 ItemPointerSetOffsetNumber(&(res->t_tid), 0xffff);
 return res;
}

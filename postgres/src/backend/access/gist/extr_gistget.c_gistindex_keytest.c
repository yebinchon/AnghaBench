
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {int leafTupdesc; } ;
struct TYPE_11__ {TYPE_3__* distances; TYPE_5__* giststate; } ;
struct TYPE_10__ {double value; int isnull; } ;
struct TYPE_9__ {int numberOfKeys; int numberOfOrderBys; TYPE_1__* orderByData; int indexRelation; TYPE_1__* keyData; int opaque; } ;
struct TYPE_8__ {int sk_flags; int sk_subtype; int sk_strategy; int sk_argument; int sk_collation; int sk_func; scalar_t__ sk_attno; } ;
typedef TYPE_1__* ScanKey ;
typedef int Relation ;
typedef int Page ;
typedef int OffsetNumber ;
typedef int IndexTuple ;
typedef TYPE_2__* IndexScanDesc ;
typedef TYPE_3__ IndexOrderByDistance ;
typedef TYPE_4__* GISTScanOpaque ;
typedef TYPE_5__ GISTSTATE ;
typedef int GISTENTRY ;
typedef int Datum ;


 int Assert (int) ;
 int DatumGetBool (int ) ;
 double DatumGetFloat8 (int ) ;
 int ERROR ;
 int FunctionCall5Coll (int *,int ,int ,int ,int ,int ,int ) ;
 scalar_t__ GistPageIsLeaf (int ) ;
 scalar_t__ GistTupleIsInvalid (int ) ;
 int Int16GetDatum (int ) ;
 int ObjectIdGetDatum (int ) ;
 int PointerGetDatum (int*) ;
 int SK_ISNULL ;
 int SK_SEARCHNOTNULL ;
 int SK_SEARCHNULL ;
 int elog (int ,char*) ;
 double get_float8_infinity () ;
 int gistdentryinit (TYPE_5__*,scalar_t__,int*,int ,int ,int ,int ,int,int) ;
 int index_getattr (int ,scalar_t__,int ,int*) ;

__attribute__((used)) static bool
gistindex_keytest(IndexScanDesc scan,
      IndexTuple tuple,
      Page page,
      OffsetNumber offset,
      bool *recheck_p,
      bool *recheck_distances_p)
{
 GISTScanOpaque so = (GISTScanOpaque) scan->opaque;
 GISTSTATE *giststate = so->giststate;
 ScanKey key = scan->keyData;
 int keySize = scan->numberOfKeys;
 IndexOrderByDistance *distance_p;
 Relation r = scan->indexRelation;

 *recheck_p = 0;
 *recheck_distances_p = 0;






 if (GistTupleIsInvalid(tuple))
 {
  int i;

  if (GistPageIsLeaf(page))
   elog(ERROR, "invalid GiST tuple found on leaf page");
  for (i = 0; i < scan->numberOfOrderBys; i++)
  {
   so->distances[i].value = -get_float8_infinity();
   so->distances[i].isnull = 0;
  }
  return 1;
 }


 while (keySize > 0)
 {
  Datum datum;
  bool isNull;

  datum = index_getattr(tuple,
         key->sk_attno,
         giststate->leafTupdesc,
         &isNull);

  if (key->sk_flags & SK_ISNULL)
  {






   if (key->sk_flags & SK_SEARCHNULL)
   {
    if (GistPageIsLeaf(page) && !isNull)
     return 0;
   }
   else
   {
    Assert(key->sk_flags & SK_SEARCHNOTNULL);
    if (isNull)
     return 0;
   }
  }
  else if (isNull)
  {
   return 0;
  }
  else
  {
   Datum test;
   bool recheck;
   GISTENTRY de;

   gistdentryinit(giststate, key->sk_attno - 1, &de,
         datum, r, page, offset,
         0, isNull);
   recheck = 1;

   test = FunctionCall5Coll(&key->sk_func,
          key->sk_collation,
          PointerGetDatum(&de),
          key->sk_argument,
          Int16GetDatum(key->sk_strategy),
          ObjectIdGetDatum(key->sk_subtype),
          PointerGetDatum(&recheck));

   if (!DatumGetBool(test))
    return 0;
   *recheck_p |= recheck;
  }

  key++;
  keySize--;
 }


 key = scan->orderByData;
 distance_p = so->distances;
 keySize = scan->numberOfOrderBys;
 while (keySize > 0)
 {
  Datum datum;
  bool isNull;

  datum = index_getattr(tuple,
         key->sk_attno,
         giststate->leafTupdesc,
         &isNull);

  if ((key->sk_flags & SK_ISNULL) || isNull)
  {

   distance_p->value = 0.0;
   distance_p->isnull = 1;
  }
  else
  {
   Datum dist;
   bool recheck;
   GISTENTRY de;

   gistdentryinit(giststate, key->sk_attno - 1, &de,
         datum, r, page, offset,
         0, isNull);
   recheck = 0;
   dist = FunctionCall5Coll(&key->sk_func,
          key->sk_collation,
          PointerGetDatum(&de),
          key->sk_argument,
          Int16GetDatum(key->sk_strategy),
          ObjectIdGetDatum(key->sk_subtype),
          PointerGetDatum(&recheck));
   *recheck_distances_p |= recheck;
   distance_p->value = DatumGetFloat8(dist);
   distance_p->isnull = 0;
  }

  key++;
  distance_p++;
  keySize--;
 }

 return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32 ;
typedef int TupleDesc ;
struct TYPE_4__ {int* cc_keyno; int cc_tupdesc; } ;
typedef int HeapTuple ;
typedef int Datum ;
typedef TYPE_1__ CatCache ;


 int Assert (int) ;
 int CatalogCacheComputeHashValue (TYPE_1__*,int,int ,int ,int ,int ) ;
 int FATAL ;
 int elog (int ,char*,int) ;
 int fastgetattr (int ,int,int ,int*) ;

__attribute__((used)) static uint32
CatalogCacheComputeTupleHashValue(CatCache *cache, int nkeys, HeapTuple tuple)
{
 Datum v1 = 0,
    v2 = 0,
    v3 = 0,
    v4 = 0;
 bool isNull = 0;
 int *cc_keyno = cache->cc_keyno;
 TupleDesc cc_tupdesc = cache->cc_tupdesc;


 switch (nkeys)
 {
  case 4:
   v4 = fastgetattr(tuple,
        cc_keyno[3],
        cc_tupdesc,
        &isNull);
   Assert(!isNull);

  case 3:
   v3 = fastgetattr(tuple,
        cc_keyno[2],
        cc_tupdesc,
        &isNull);
   Assert(!isNull);

  case 2:
   v2 = fastgetattr(tuple,
        cc_keyno[1],
        cc_tupdesc,
        &isNull);
   Assert(!isNull);

  case 1:
   v1 = fastgetattr(tuple,
        cc_keyno[0],
        cc_tupdesc,
        &isNull);
   Assert(!isNull);
   break;
  default:
   elog(FATAL, "wrong number of hash keys: %d", nkeys);
   break;
 }

 return CatalogCacheComputeHashValue(cache, nkeys, v1, v2, v3, v4);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int TupleDesc ;
struct TYPE_5__ {int numberOfKeys; TYPE_1__* keyData; int indexRelation; } ;
struct TYPE_4__ {int sk_flags; int sk_argument; int sk_collation; int sk_func; int sk_attno; } ;
typedef TYPE_1__* ScanKey ;
typedef int IndexTuple ;
typedef TYPE_2__* IndexScanDesc ;
typedef int Datum ;


 int DatumGetBool (int ) ;
 int FunctionCall2Coll (int *,int ,int ,int ) ;
 int RelationGetDescr (int ) ;
 int SK_ISNULL ;
 int index_getattr (int ,int ,int ,int*) ;

bool
_hash_checkqual(IndexScanDesc scan, IndexTuple itup)
{
 return 1;
}

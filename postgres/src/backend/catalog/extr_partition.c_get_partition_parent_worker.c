
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int inhparent; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_inherits ;


 int Anum_pg_inherits_inhrelid ;
 int Anum_pg_inherits_inhseqno ;
 int BTEqualStrategyNumber ;
 int F_INT4EQ ;
 int F_OIDEQ ;
 int GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int InheritsRelidSeqnoIndexId ;
 int Int32GetDatum (int) ;
 int InvalidOid ;
 int ObjectIdGetDatum (int ) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 int systable_getnext (int ) ;

__attribute__((used)) static Oid
get_partition_parent_worker(Relation inhRel, Oid relid)
{
 SysScanDesc scan;
 ScanKeyData key[2];
 Oid result = InvalidOid;
 HeapTuple tuple;

 ScanKeyInit(&key[0],
    Anum_pg_inherits_inhrelid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(relid));
 ScanKeyInit(&key[1],
    Anum_pg_inherits_inhseqno,
    BTEqualStrategyNumber, F_INT4EQ,
    Int32GetDatum(1));

 scan = systable_beginscan(inhRel, InheritsRelidSeqnoIndexId, 1,
         ((void*)0), 2, key);
 tuple = systable_getnext(scan);
 if (HeapTupleIsValid(tuple))
 {
  Form_pg_inherits form = (Form_pg_inherits) GETSTRUCT(tuple);

  result = form->inhparent;
 }

 systable_endscan(scan);

 return result;
}

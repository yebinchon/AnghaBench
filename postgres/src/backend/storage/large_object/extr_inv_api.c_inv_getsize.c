
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64 ;
typedef int bytea ;
struct TYPE_7__ {scalar_t__ pageno; } ;
struct TYPE_6__ {int snapshot; int id; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef TYPE_1__ LargeObjectDesc ;
typedef int HeapTuple ;
typedef TYPE_2__* Form_pg_largeobject ;


 int Anum_pg_largeobject_loid ;
 int Assert (int ) ;
 int BTEqualStrategyNumber ;
 int BackwardScanDirection ;
 int ERROR ;
 int F_OIDEQ ;
 scalar_t__ GETSTRUCT (int ) ;
 scalar_t__ HeapTupleHasNulls (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int LOBLKSIZE ;
 int ObjectIdGetDatum (int ) ;
 int PointerIsValid (TYPE_1__*) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int elog (int ,char*) ;
 int getdatafield (TYPE_2__*,int **,int*,int*) ;
 int lo_heap_r ;
 int lo_index_r ;
 int open_lo_relation () ;
 int pfree (int *) ;
 int systable_beginscan_ordered (int ,int ,int ,int,int *) ;
 int systable_endscan_ordered (int ) ;
 int systable_getnext_ordered (int ,int ) ;

__attribute__((used)) static uint64
inv_getsize(LargeObjectDesc *obj_desc)
{
 uint64 lastbyte = 0;
 ScanKeyData skey[1];
 SysScanDesc sd;
 HeapTuple tuple;

 Assert(PointerIsValid(obj_desc));

 open_lo_relation();

 ScanKeyInit(&skey[0],
    Anum_pg_largeobject_loid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(obj_desc->id));

 sd = systable_beginscan_ordered(lo_heap_r, lo_index_r,
         obj_desc->snapshot, 1, skey);







 tuple = systable_getnext_ordered(sd, BackwardScanDirection);
 if (HeapTupleIsValid(tuple))
 {
  Form_pg_largeobject data;
  bytea *datafield;
  int len;
  bool pfreeit;

  if (HeapTupleHasNulls(tuple))
   elog(ERROR, "null field found in pg_largeobject");
  data = (Form_pg_largeobject) GETSTRUCT(tuple);
  getdatafield(data, &datafield, &len, &pfreeit);
  lastbyte = (uint64) data->pageno * LOBLKSIZE + len;
  if (pfreeit)
   pfree(datafield);
 }

 systable_endscan_ordered(sd);

 return lastbyte;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64 ;
typedef int int64 ;
typedef int int32 ;
typedef int bytea ;
struct TYPE_7__ {scalar_t__ pageno; } ;
struct TYPE_6__ {int offset; int flags; int snapshot; int id; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef TYPE_1__ LargeObjectDesc ;
typedef int * HeapTuple ;
typedef TYPE_2__* Form_pg_largeobject ;


 int Anum_pg_largeobject_loid ;
 int Anum_pg_largeobject_pageno ;
 int Assert (int) ;
 int BTEqualStrategyNumber ;
 int BTGreaterEqualStrategyNumber ;
 int ERRCODE_INSUFFICIENT_PRIVILEGE ;
 int ERROR ;
 int F_INT4GE ;
 int F_OIDEQ ;
 int ForwardScanDirection ;
 scalar_t__ GETSTRUCT (int *) ;
 scalar_t__ HeapTupleHasNulls (int *) ;
 int IFS_RDLOCK ;
 int Int32GetDatum (int ) ;
 int LOBLKSIZE ;
 int MemSet (char*,int ,int) ;
 int ObjectIdGetDatum (int ) ;
 int PointerIsValid (TYPE_1__*) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int VARDATA (int *) ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int getdatafield (TYPE_2__*,int **,int*,int*) ;
 int lo_heap_r ;
 int lo_index_r ;
 int memcpy (char*,int,int) ;
 int open_lo_relation () ;
 int pfree (int *) ;
 int systable_beginscan_ordered (int ,int ,int ,int,int *) ;
 int systable_endscan_ordered (int ) ;
 int * systable_getnext_ordered (int ,int ) ;

int
inv_read(LargeObjectDesc *obj_desc, char *buf, int nbytes)
{
 int nread = 0;
 int64 n;
 int64 off;
 int len;
 int32 pageno = (int32) (obj_desc->offset / LOBLKSIZE);
 uint64 pageoff;
 ScanKeyData skey[2];
 SysScanDesc sd;
 HeapTuple tuple;

 Assert(PointerIsValid(obj_desc));
 Assert(buf != ((void*)0));

 if ((obj_desc->flags & IFS_RDLOCK) == 0)
  ereport(ERROR,
    (errcode(ERRCODE_INSUFFICIENT_PRIVILEGE),
     errmsg("permission denied for large object %u",
      obj_desc->id)));

 if (nbytes <= 0)
  return 0;

 open_lo_relation();

 ScanKeyInit(&skey[0],
    Anum_pg_largeobject_loid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(obj_desc->id));

 ScanKeyInit(&skey[1],
    Anum_pg_largeobject_pageno,
    BTGreaterEqualStrategyNumber, F_INT4GE,
    Int32GetDatum(pageno));

 sd = systable_beginscan_ordered(lo_heap_r, lo_index_r,
         obj_desc->snapshot, 2, skey);

 while ((tuple = systable_getnext_ordered(sd, ForwardScanDirection)) != ((void*)0))
 {
  Form_pg_largeobject data;
  bytea *datafield;
  bool pfreeit;

  if (HeapTupleHasNulls(tuple))
   elog(ERROR, "null field found in pg_largeobject");
  data = (Form_pg_largeobject) GETSTRUCT(tuple);






  pageoff = ((uint64) data->pageno) * LOBLKSIZE;
  if (pageoff > obj_desc->offset)
  {
   n = pageoff - obj_desc->offset;
   n = (n <= (nbytes - nread)) ? n : (nbytes - nread);
   MemSet(buf + nread, 0, n);
   nread += n;
   obj_desc->offset += n;
  }

  if (nread < nbytes)
  {
   Assert(obj_desc->offset >= pageoff);
   off = (int) (obj_desc->offset - pageoff);
   Assert(off >= 0 && off < LOBLKSIZE);

   getdatafield(data, &datafield, &len, &pfreeit);
   if (len > off)
   {
    n = len - off;
    n = (n <= (nbytes - nread)) ? n : (nbytes - nread);
    memcpy(buf + nread, VARDATA(datafield) + off, n);
    nread += n;
    obj_desc->offset += n;
   }
   if (pfreeit)
    pfree(datafield);
  }

  if (nread >= nbytes)
   break;
 }

 systable_endscan_ordered(sd);

 return nread;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct varlena {int dummy; } ;
struct varatt_external {int va_extsize; int va_valueid; int va_toastrelid; } ;
typedef int int32 ;
typedef int TupleDesc ;
struct TYPE_10__ {int rd_att; } ;
typedef int SysScanDesc ;
typedef int SnapshotData ;
typedef int ScanKeyData ;
typedef TYPE_1__* Relation ;
typedef struct varlena* Pointer ;
typedef int * HeapTuple ;
typedef int AttrNumber ;


 int AccessShareLock ;
 int Assert (int) ;
 int BTEqualStrategyNumber ;
 int BTGreaterEqualStrategyNumber ;
 int BTLessEqualStrategyNumber ;
 int DatumGetInt32 (int ) ;
 struct varlena* DatumGetPointer (int ) ;
 int ERROR ;
 int F_INT4EQ ;
 int F_INT4GE ;
 int F_INT4LE ;
 int F_OIDEQ ;
 int ForwardScanDirection ;
 int Int32GetDatum (int) ;
 int ObjectIdGetDatum (int ) ;
 int RelationGetRelationName (TYPE_1__*) ;
 int SET_VARSIZE (struct varlena*,int) ;
 int SET_VARSIZE_COMPRESSED (struct varlena*,int) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int TOAST_MAX_CHUNK_SIZE ;
 int VARATT_EXTERNAL_GET_POINTER (struct varatt_external,struct varlena*) ;
 scalar_t__ VARATT_EXTERNAL_IS_COMPRESSED (struct varatt_external) ;
 int VARATT_IS_EXTENDED (struct varlena*) ;
 int VARATT_IS_EXTERNAL_ONDISK (struct varlena*) ;
 scalar_t__ VARATT_IS_SHORT (struct varlena*) ;
 char* VARDATA (struct varlena*) ;
 char* VARDATA_SHORT (struct varlena*) ;
 int VARHDRSZ ;
 int VARHDRSZ_SHORT ;
 int VARSIZE (struct varlena*) ;
 int VARSIZE_SHORT (struct varlena*) ;
 int elog (int ,char*,...) ;
 int fastgetattr (int *,int,int ,int*) ;
 int init_toast_snapshot (int *) ;
 int memcpy (char*,char*,int) ;
 scalar_t__ palloc (int) ;
 int systable_beginscan_ordered (TYPE_1__*,TYPE_1__*,int *,int,int *) ;
 int systable_endscan_ordered (int ) ;
 int * systable_getnext_ordered (int ,int ) ;
 int table_close (TYPE_1__*,int ) ;
 TYPE_1__* table_open (int ,int ) ;
 int toast_close_indexes (TYPE_1__**,int,int ) ;
 int toast_open_indexes (TYPE_1__*,int ,TYPE_1__***,int*) ;

__attribute__((used)) static struct varlena *
toast_fetch_datum_slice(struct varlena *attr, int32 sliceoffset, int32 length)
{
 Relation toastrel;
 Relation *toastidxs;
 ScanKeyData toastkey[3];
 int nscankeys;
 SysScanDesc toastscan;
 HeapTuple ttup;
 TupleDesc toasttupDesc;
 struct varlena *result;
 struct varatt_external toast_pointer;
 int32 attrsize;
 int32 residx;
 int32 nextidx;
 int numchunks;
 int startchunk;
 int endchunk;
 int32 startoffset;
 int32 endoffset;
 int totalchunks;
 Pointer chunk;
 bool isnull;
 char *chunkdata;
 int32 chunksize;
 int32 chcpystrt;
 int32 chcpyend;
 int num_indexes;
 int validIndex;
 SnapshotData SnapshotToast;

 if (!VARATT_IS_EXTERNAL_ONDISK(attr))
  elog(ERROR, "toast_fetch_datum_slice shouldn't be called for non-ondisk datums");


 VARATT_EXTERNAL_GET_POINTER(toast_pointer, attr);






 Assert(!VARATT_EXTERNAL_IS_COMPRESSED(toast_pointer) || 0 == sliceoffset);

 attrsize = toast_pointer.va_extsize;
 totalchunks = ((attrsize - 1) / TOAST_MAX_CHUNK_SIZE) + 1;

 if (sliceoffset >= attrsize)
 {
  sliceoffset = 0;
  length = 0;
 }






 if (VARATT_EXTERNAL_IS_COMPRESSED(toast_pointer) && length > 0)
  length = length + sizeof(int32);

 if (((sliceoffset + length) > attrsize) || length < 0)
  length = attrsize - sliceoffset;

 result = (struct varlena *) palloc(length + VARHDRSZ);

 if (VARATT_EXTERNAL_IS_COMPRESSED(toast_pointer))
  SET_VARSIZE_COMPRESSED(result, length + VARHDRSZ);
 else
  SET_VARSIZE(result, length + VARHDRSZ);

 if (length == 0)
  return result;

 startchunk = sliceoffset / TOAST_MAX_CHUNK_SIZE;
 endchunk = (sliceoffset + length - 1) / TOAST_MAX_CHUNK_SIZE;
 numchunks = (endchunk - startchunk) + 1;

 startoffset = sliceoffset % TOAST_MAX_CHUNK_SIZE;
 endoffset = (sliceoffset + length - 1) % TOAST_MAX_CHUNK_SIZE;




 toastrel = table_open(toast_pointer.va_toastrelid, AccessShareLock);
 toasttupDesc = toastrel->rd_att;


 validIndex = toast_open_indexes(toastrel,
         AccessShareLock,
         &toastidxs,
         &num_indexes);





 ScanKeyInit(&toastkey[0],
    (AttrNumber) 1,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(toast_pointer.va_valueid));




 if (numchunks == 1)
 {
  ScanKeyInit(&toastkey[1],
     (AttrNumber) 2,
     BTEqualStrategyNumber, F_INT4EQ,
     Int32GetDatum(startchunk));
  nscankeys = 2;
 }
 else
 {
  ScanKeyInit(&toastkey[1],
     (AttrNumber) 2,
     BTGreaterEqualStrategyNumber, F_INT4GE,
     Int32GetDatum(startchunk));
  ScanKeyInit(&toastkey[2],
     (AttrNumber) 2,
     BTLessEqualStrategyNumber, F_INT4LE,
     Int32GetDatum(endchunk));
  nscankeys = 3;
 }






 init_toast_snapshot(&SnapshotToast);
 nextidx = startchunk;
 toastscan = systable_beginscan_ordered(toastrel, toastidxs[validIndex],
             &SnapshotToast, nscankeys, toastkey);
 while ((ttup = systable_getnext_ordered(toastscan, ForwardScanDirection)) != ((void*)0))
 {



  residx = DatumGetInt32(fastgetattr(ttup, 2, toasttupDesc, &isnull));
  Assert(!isnull);
  chunk = DatumGetPointer(fastgetattr(ttup, 3, toasttupDesc, &isnull));
  Assert(!isnull);
  if (!VARATT_IS_EXTENDED(chunk))
  {
   chunksize = VARSIZE(chunk) - VARHDRSZ;
   chunkdata = VARDATA(chunk);
  }
  else if (VARATT_IS_SHORT(chunk))
  {

   chunksize = VARSIZE_SHORT(chunk) - VARHDRSZ_SHORT;
   chunkdata = VARDATA_SHORT(chunk);
  }
  else
  {

   elog(ERROR, "found toasted toast chunk for toast value %u in %s",
     toast_pointer.va_valueid,
     RelationGetRelationName(toastrel));
   chunksize = 0;
   chunkdata = ((void*)0);
  }




  if ((residx != nextidx) || (residx > endchunk) || (residx < startchunk))
   elog(ERROR, "unexpected chunk number %d (expected %d) for toast value %u in %s",
     residx, nextidx,
     toast_pointer.va_valueid,
     RelationGetRelationName(toastrel));
  if (residx < totalchunks - 1)
  {
   if (chunksize != TOAST_MAX_CHUNK_SIZE)
    elog(ERROR, "unexpected chunk size %d (expected %d) in chunk %d of %d for toast value %u in %s when fetching slice",
      chunksize, (int) TOAST_MAX_CHUNK_SIZE,
      residx, totalchunks,
      toast_pointer.va_valueid,
      RelationGetRelationName(toastrel));
  }
  else if (residx == totalchunks - 1)
  {
   if ((residx * TOAST_MAX_CHUNK_SIZE + chunksize) != attrsize)
    elog(ERROR, "unexpected chunk size %d (expected %d) in final chunk %d for toast value %u in %s when fetching slice",
      chunksize,
      (int) (attrsize - residx * TOAST_MAX_CHUNK_SIZE),
      residx,
      toast_pointer.va_valueid,
      RelationGetRelationName(toastrel));
  }
  else
   elog(ERROR, "unexpected chunk number %d (out of range %d..%d) for toast value %u in %s",
     residx,
     0, totalchunks - 1,
     toast_pointer.va_valueid,
     RelationGetRelationName(toastrel));




  chcpystrt = 0;
  chcpyend = chunksize - 1;
  if (residx == startchunk)
   chcpystrt = startoffset;
  if (residx == endchunk)
   chcpyend = endoffset;

  memcpy(VARDATA(result) +
      (residx * TOAST_MAX_CHUNK_SIZE - sliceoffset) + chcpystrt,
      chunkdata + chcpystrt,
      (chcpyend - chcpystrt) + 1);

  nextidx++;
 }




 if (nextidx != (endchunk + 1))
  elog(ERROR, "missing chunk number %d for toast value %u in %s",
    nextidx,
    toast_pointer.va_valueid,
    RelationGetRelationName(toastrel));




 systable_endscan_ordered(toastscan);
 toast_close_indexes(toastidxs, num_indexes, AccessShareLock);
 table_close(toastrel, AccessShareLock);

 return result;
}

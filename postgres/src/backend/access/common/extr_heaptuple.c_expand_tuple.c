
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef int uint16 ;
typedef char bits8 ;
typedef TYPE_2__* TupleDesc ;
struct TYPE_26__ {int am_value; scalar_t__ am_present; } ;
struct TYPE_25__ {int attlen; int attalign; } ;
struct TYPE_24__ {int t_len; TYPE_3__* t_data; int t_self; int t_tableOid; } ;
struct TYPE_23__ {int t_hoff; int t_len; int t_infomask; int t_ctid; } ;
struct TYPE_22__ {int natts; int tdtypmod; int tdtypeid; TYPE_1__* constr; } ;
struct TYPE_21__ {TYPE_7__* missing; } ;
typedef int Size ;
typedef TYPE_3__* MinimalTuple ;
typedef TYPE_3__* HeapTupleHeader ;
typedef TYPE_5__* HeapTuple ;
typedef TYPE_6__* Form_pg_attribute ;
typedef int Datum ;
typedef TYPE_7__ AttrMissing ;


 int Assert (int) ;
 int BITMAPLEN (int) ;
 int HEAPTUPLESIZE ;
 int HeapTupleHasNulls (TYPE_5__*) ;
 int HeapTupleHeaderData ;
 int HeapTupleHeaderGetNatts (TYPE_3__*) ;
 int HeapTupleHeaderSetDatumLength (TYPE_3__*,int) ;
 int HeapTupleHeaderSetNatts (TYPE_3__*,int) ;
 int HeapTupleHeaderSetTypMod (TYPE_3__*,int ) ;
 int HeapTupleHeaderSetTypeId (TYPE_3__*,int ) ;
 int ItemPointerSetInvalid (int *) ;
 int MAXALIGN (int) ;
 int MINIMAL_TUPLE_OFFSET ;
 int MinimalTupleData ;
 int SizeofMinimalTupleHeader ;
 TYPE_6__* TupleDescAttr (TYPE_2__*,int) ;
 int att_addlength_pointer (int,int ,int ) ;
 int att_align_datum (int,int ,int ,int ) ;
 int fill_val (TYPE_6__*,char**,int*,char**,int *,int ,int) ;
 int memcpy (char*,char*,int) ;
 int memset (char*,int,int) ;
 int offsetof (int ,int ) ;
 scalar_t__ palloc0 (int) ;
 int t_bits ;

__attribute__((used)) static void
expand_tuple(HeapTuple *targetHeapTuple,
    MinimalTuple *targetMinimalTuple,
    HeapTuple sourceTuple,
    TupleDesc tupleDesc)
{
 AttrMissing *attrmiss = ((void*)0);
 int attnum;
 int firstmissingnum = 0;
 bool hasNulls = HeapTupleHasNulls(sourceTuple);
 HeapTupleHeader targetTHeader;
 HeapTupleHeader sourceTHeader = sourceTuple->t_data;
 int sourceNatts = HeapTupleHeaderGetNatts(sourceTHeader);
 int natts = tupleDesc->natts;
 int sourceNullLen;
 int targetNullLen;
 Size sourceDataLen = sourceTuple->t_len - sourceTHeader->t_hoff;
 Size targetDataLen;
 Size len;
 int hoff;
 bits8 *nullBits = ((void*)0);
 int bitMask = 0;
 char *targetData;
 uint16 *infoMask;

 Assert((targetHeapTuple && !targetMinimalTuple)
     || (!targetHeapTuple && targetMinimalTuple));

 Assert(sourceNatts < natts);

 sourceNullLen = (hasNulls ? BITMAPLEN(sourceNatts) : 0);

 targetDataLen = sourceDataLen;

 if (tupleDesc->constr &&
  tupleDesc->constr->missing)
 {





  attrmiss = tupleDesc->constr->missing;





  for (firstmissingnum = sourceNatts;
    firstmissingnum < natts;
    firstmissingnum++)
  {
   if (attrmiss[firstmissingnum].am_present)
    break;
   else
    hasNulls = 1;
  }





  for (attnum = firstmissingnum;
    attnum < natts;
    attnum++)
  {
   if (attrmiss[attnum].am_present)
   {
    Form_pg_attribute att = TupleDescAttr(tupleDesc, attnum);

    targetDataLen = att_align_datum(targetDataLen,
            att->attalign,
            att->attlen,
            attrmiss[attnum].am_value);

    targetDataLen = att_addlength_pointer(targetDataLen,
               att->attlen,
               attrmiss[attnum].am_value);
   }
   else
   {

    hasNulls = 1;
   }
  }
 }
 else
 {




  hasNulls = 1;
 }

 len = 0;

 if (hasNulls)
 {
  targetNullLen = BITMAPLEN(natts);
  len += targetNullLen;
 }
 else
  targetNullLen = 0;





 if (targetHeapTuple)
 {
  len += offsetof(HeapTupleHeaderData, t_bits);
  hoff = len = MAXALIGN(len);
  len += targetDataLen;

  *targetHeapTuple = (HeapTuple) palloc0(HEAPTUPLESIZE + len);
  (*targetHeapTuple)->t_data
   = targetTHeader
   = (HeapTupleHeader) ((char *) *targetHeapTuple + HEAPTUPLESIZE);
  (*targetHeapTuple)->t_len = len;
  (*targetHeapTuple)->t_tableOid = sourceTuple->t_tableOid;
  (*targetHeapTuple)->t_self = sourceTuple->t_self;

  targetTHeader->t_infomask = sourceTHeader->t_infomask;
  targetTHeader->t_hoff = hoff;
  HeapTupleHeaderSetNatts(targetTHeader, natts);
  HeapTupleHeaderSetDatumLength(targetTHeader, len);
  HeapTupleHeaderSetTypeId(targetTHeader, tupleDesc->tdtypeid);
  HeapTupleHeaderSetTypMod(targetTHeader, tupleDesc->tdtypmod);

  ItemPointerSetInvalid(&(targetTHeader->t_ctid));
  if (targetNullLen > 0)
   nullBits = (bits8 *) ((char *) (*targetHeapTuple)->t_data
          + offsetof(HeapTupleHeaderData, t_bits));
  targetData = (char *) (*targetHeapTuple)->t_data + hoff;
  infoMask = &(targetTHeader->t_infomask);
 }
 else
 {
  len += SizeofMinimalTupleHeader;
  hoff = len = MAXALIGN(len);
  len += targetDataLen;

  *targetMinimalTuple = (MinimalTuple) palloc0(len);
  (*targetMinimalTuple)->t_len = len;
  (*targetMinimalTuple)->t_hoff = hoff + MINIMAL_TUPLE_OFFSET;
  (*targetMinimalTuple)->t_infomask = sourceTHeader->t_infomask;

  HeapTupleHeaderSetNatts(*targetMinimalTuple, natts);
  if (targetNullLen > 0)
   nullBits = (bits8 *) ((char *) *targetMinimalTuple
          + offsetof(MinimalTupleData, t_bits));
  targetData = (char *) *targetMinimalTuple + hoff;
  infoMask = &((*targetMinimalTuple)->t_infomask);
 }

 if (targetNullLen > 0)
 {
  if (sourceNullLen > 0)
  {

   memcpy(nullBits,
       ((char *) sourceTHeader)
       + offsetof(HeapTupleHeaderData, t_bits),
       sourceNullLen);
   nullBits += sourceNullLen - 1;
  }
  else
  {
   sourceNullLen = BITMAPLEN(sourceNatts);

   memset(nullBits, 0xff, sourceNullLen);

   nullBits += sourceNullLen - 1;

   if (sourceNatts & 0x07)
   {

    bitMask = 0xff << (sourceNatts & 0x07);

    *nullBits = ~bitMask;
   }
  }

  bitMask = (1 << ((sourceNatts - 1) & 0x07));
 }

 memcpy(targetData,
     ((char *) sourceTuple->t_data) + sourceTHeader->t_hoff,
     sourceDataLen);

 targetData += sourceDataLen;


 for (attnum = sourceNatts; attnum < natts; attnum++)
 {

  Form_pg_attribute attr = TupleDescAttr(tupleDesc, attnum);

  if (attrmiss && attrmiss[attnum].am_present)
  {
   fill_val(attr,
      nullBits ? &nullBits : ((void*)0),
      &bitMask,
      &targetData,
      infoMask,
      attrmiss[attnum].am_value,
      0);
  }
  else
  {
   fill_val(attr,
      &nullBits,
      &bitMask,
      &targetData,
      infoMask,
      (Datum) 0,
      1);
  }
 }
}

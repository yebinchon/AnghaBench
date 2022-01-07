
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_34__ TYPE_7__ ;
typedef struct TYPE_33__ TYPE_6__ ;
typedef struct TYPE_32__ TYPE_5__ ;
typedef struct TYPE_31__ TYPE_4__ ;
typedef struct TYPE_30__ TYPE_3__ ;
typedef struct TYPE_29__ TYPE_2__ ;
typedef struct TYPE_28__ TYPE_23__ ;
typedef struct TYPE_27__ TYPE_1__ ;


typedef int int32 ;
typedef TYPE_2__* TupleDesc ;
struct TYPE_30__ {int* ttc_isnull; int* ttc_oldisnull; int ttc_flags; TYPE_4__* ttc_attr; int * ttc_oldvalues; int * ttc_values; TYPE_5__* ttc_rel; } ;
typedef TYPE_3__ ToastTupleContext ;
struct TYPE_31__ {scalar_t__ tai_size; int tai_colflags; } ;
typedef TYPE_4__ ToastAttrInfo ;
struct TYPE_34__ {int t_len; TYPE_6__* t_data; int t_tableOid; int t_self; } ;
struct TYPE_33__ {int t_hoff; int * t_bits; int t_infomask; } ;
struct TYPE_32__ {TYPE_1__* rd_rel; TYPE_2__* rd_att; } ;
struct TYPE_29__ {int natts; } ;
struct TYPE_28__ {char attstorage; } ;
struct TYPE_27__ {scalar_t__ relkind; scalar_t__ reltoastrelid; } ;
typedef scalar_t__ Size ;
typedef TYPE_5__* Relation ;
typedef TYPE_6__* HeapTupleHeader ;
typedef TYPE_7__* HeapTuple ;
typedef int Datum ;


 int Assert (int) ;
 int BITMAPLEN (int) ;
 int HEAPTUPLESIZE ;
 int HEAP_INSERT_SPECULATIVE ;
 int HeapTupleHeaderSetNatts (TYPE_6__*,int) ;
 scalar_t__ InvalidOid ;
 void* MAXALIGN (int) ;
 int MaxHeapAttributeNumber ;
 scalar_t__ RELKIND_MATVIEW ;
 scalar_t__ RELKIND_RELATION ;
 scalar_t__ RelationGetToastTupleTarget (TYPE_5__*,int ) ;
 void* SizeofHeapTupleHeader ;
 int TOASTCOL_INCOMPRESSIBLE ;
 int TOAST_HAS_NULLS ;
 int TOAST_NEEDS_CHANGE ;
 int TOAST_TUPLE_TARGET ;
 scalar_t__ TOAST_TUPLE_TARGET_MAIN ;
 TYPE_23__* TupleDescAttr (TYPE_2__*,int) ;
 scalar_t__ heap_compute_data_size (TYPE_2__*,int *,int*) ;
 int heap_deform_tuple (TYPE_7__*,TYPE_2__*,int *,int*) ;
 int heap_fill_tuple (TYPE_2__*,int *,int*,char*,int,int *,int *) ;
 int memcpy (TYPE_6__*,TYPE_6__*,void*) ;
 scalar_t__ palloc0 (int) ;
 int toast_tuple_cleanup (TYPE_3__*) ;
 int toast_tuple_externalize (TYPE_3__*,int,int) ;
 int toast_tuple_find_biggest_attribute (TYPE_3__*,int,int) ;
 int toast_tuple_init (TYPE_3__*) ;
 int toast_tuple_try_compression (TYPE_3__*,int) ;

HeapTuple
heap_toast_insert_or_update(Relation rel, HeapTuple newtup, HeapTuple oldtup,
       int options)
{
 HeapTuple result_tuple;
 TupleDesc tupleDesc;
 int numAttrs;

 Size maxDataLen;
 Size hoff;

 bool toast_isnull[MaxHeapAttributeNumber];
 bool toast_oldisnull[MaxHeapAttributeNumber];
 Datum toast_values[MaxHeapAttributeNumber];
 Datum toast_oldvalues[MaxHeapAttributeNumber];
 ToastAttrInfo toast_attr[MaxHeapAttributeNumber];
 ToastTupleContext ttc;







 options &= ~HEAP_INSERT_SPECULATIVE;





 Assert(rel->rd_rel->relkind == RELKIND_RELATION ||
     rel->rd_rel->relkind == RELKIND_MATVIEW);




 tupleDesc = rel->rd_att;
 numAttrs = tupleDesc->natts;

 Assert(numAttrs <= MaxHeapAttributeNumber);
 heap_deform_tuple(newtup, tupleDesc, toast_values, toast_isnull);
 if (oldtup != ((void*)0))
  heap_deform_tuple(oldtup, tupleDesc, toast_oldvalues, toast_oldisnull);





 ttc.ttc_rel = rel;
 ttc.ttc_values = toast_values;
 ttc.ttc_isnull = toast_isnull;
 if (oldtup == ((void*)0))
 {
  ttc.ttc_oldvalues = ((void*)0);
  ttc.ttc_oldisnull = ((void*)0);
 }
 else
 {
  ttc.ttc_oldvalues = toast_oldvalues;
  ttc.ttc_oldisnull = toast_oldisnull;
 }
 ttc.ttc_attr = toast_attr;
 toast_tuple_init(&ttc);
 hoff = SizeofHeapTupleHeader;
 if ((ttc.ttc_flags & TOAST_HAS_NULLS) != 0)
  hoff += BITMAPLEN(numAttrs);
 hoff = MAXALIGN(hoff);

 maxDataLen = RelationGetToastTupleTarget(rel, TOAST_TUPLE_TARGET) - hoff;





 while (heap_compute_data_size(tupleDesc,
          toast_values, toast_isnull) > maxDataLen)
 {
  int biggest_attno;

  biggest_attno = toast_tuple_find_biggest_attribute(&ttc, 1, 0);
  if (biggest_attno < 0)
   break;




  if (TupleDescAttr(tupleDesc, biggest_attno)->attstorage == 'x')
   toast_tuple_try_compression(&ttc, biggest_attno);
  else
  {

   toast_attr[biggest_attno].tai_colflags |= TOASTCOL_INCOMPRESSIBLE;
  }
  if (toast_attr[biggest_attno].tai_size > maxDataLen &&
   rel->rd_rel->reltoastrelid != InvalidOid)
   toast_tuple_externalize(&ttc, biggest_attno, options);
 }






 while (heap_compute_data_size(tupleDesc,
          toast_values, toast_isnull) > maxDataLen &&
     rel->rd_rel->reltoastrelid != InvalidOid)
 {
  int biggest_attno;

  biggest_attno = toast_tuple_find_biggest_attribute(&ttc, 0, 0);
  if (biggest_attno < 0)
   break;
  toast_tuple_externalize(&ttc, biggest_attno, options);
 }





 while (heap_compute_data_size(tupleDesc,
          toast_values, toast_isnull) > maxDataLen)
 {
  int biggest_attno;

  biggest_attno = toast_tuple_find_biggest_attribute(&ttc, 1, 1);
  if (biggest_attno < 0)
   break;

  toast_tuple_try_compression(&ttc, biggest_attno);
 }






 maxDataLen = TOAST_TUPLE_TARGET_MAIN - hoff;

 while (heap_compute_data_size(tupleDesc,
          toast_values, toast_isnull) > maxDataLen &&
     rel->rd_rel->reltoastrelid != InvalidOid)
 {
  int biggest_attno;

  biggest_attno = toast_tuple_find_biggest_attribute(&ttc, 0, 1);
  if (biggest_attno < 0)
   break;

  toast_tuple_externalize(&ttc, biggest_attno, options);
 }





 if ((ttc.ttc_flags & TOAST_NEEDS_CHANGE) != 0)
 {
  HeapTupleHeader olddata = newtup->t_data;
  HeapTupleHeader new_data;
  int32 new_header_len;
  int32 new_data_len;
  int32 new_tuple_len;
  new_header_len = SizeofHeapTupleHeader;
  if ((ttc.ttc_flags & TOAST_HAS_NULLS) != 0)
   new_header_len += BITMAPLEN(numAttrs);
  new_header_len = MAXALIGN(new_header_len);
  new_data_len = heap_compute_data_size(tupleDesc,
             toast_values, toast_isnull);
  new_tuple_len = new_header_len + new_data_len;




  result_tuple = (HeapTuple) palloc0(HEAPTUPLESIZE + new_tuple_len);
  result_tuple->t_len = new_tuple_len;
  result_tuple->t_self = newtup->t_self;
  result_tuple->t_tableOid = newtup->t_tableOid;
  new_data = (HeapTupleHeader) ((char *) result_tuple + HEAPTUPLESIZE);
  result_tuple->t_data = new_data;




  memcpy(new_data, olddata, SizeofHeapTupleHeader);
  HeapTupleHeaderSetNatts(new_data, numAttrs);
  new_data->t_hoff = new_header_len;


  heap_fill_tuple(tupleDesc,
      toast_values,
      toast_isnull,
      (char *) new_data + new_header_len,
      new_data_len,
      &(new_data->t_infomask),
      ((ttc.ttc_flags & TOAST_HAS_NULLS) != 0) ?
      new_data->t_bits : ((void*)0));
 }
 else
  result_tuple = newtup;

 toast_tuple_cleanup(&ttc);

 return result_tuple;
}

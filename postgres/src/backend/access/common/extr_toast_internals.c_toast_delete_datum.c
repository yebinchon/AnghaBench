
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct varlena {int dummy; } ;
struct varatt_external {int va_valueid; int va_toastrelid; } ;
struct TYPE_3__ {int t_self; } ;
typedef int SysScanDesc ;
typedef int SnapshotData ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef TYPE_1__* HeapTuple ;
typedef int Datum ;
typedef int AttrNumber ;


 int BTEqualStrategyNumber ;
 scalar_t__ DatumGetPointer (int ) ;
 int F_OIDEQ ;
 int ForwardScanDirection ;
 int ObjectIdGetDatum (int ) ;
 int RowExclusiveLock ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int VARATT_EXTERNAL_GET_POINTER (struct varatt_external,struct varlena*) ;
 int VARATT_IS_EXTERNAL_ONDISK (struct varlena*) ;
 int heap_abort_speculative (int ,int *) ;
 int init_toast_snapshot (int *) ;
 int simple_heap_delete (int ,int *) ;
 int systable_beginscan_ordered (int ,int ,int *,int,int *) ;
 int systable_endscan_ordered (int ) ;
 TYPE_1__* systable_getnext_ordered (int ,int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;
 int toast_close_indexes (int *,int,int ) ;
 int toast_open_indexes (int ,int ,int **,int*) ;

void
toast_delete_datum(Relation rel, Datum value, bool is_speculative)
{
 struct varlena *attr = (struct varlena *) DatumGetPointer(value);
 struct varatt_external toast_pointer;
 Relation toastrel;
 Relation *toastidxs;
 ScanKeyData toastkey;
 SysScanDesc toastscan;
 HeapTuple toasttup;
 int num_indexes;
 int validIndex;
 SnapshotData SnapshotToast;

 if (!VARATT_IS_EXTERNAL_ONDISK(attr))
  return;


 VARATT_EXTERNAL_GET_POINTER(toast_pointer, attr);




 toastrel = table_open(toast_pointer.va_toastrelid, RowExclusiveLock);


 validIndex = toast_open_indexes(toastrel,
         RowExclusiveLock,
         &toastidxs,
         &num_indexes);




 ScanKeyInit(&toastkey,
    (AttrNumber) 1,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(toast_pointer.va_valueid));






 init_toast_snapshot(&SnapshotToast);
 toastscan = systable_beginscan_ordered(toastrel, toastidxs[validIndex],
             &SnapshotToast, 1, &toastkey);
 while ((toasttup = systable_getnext_ordered(toastscan, ForwardScanDirection)) != ((void*)0))
 {



  if (is_speculative)
   heap_abort_speculative(toastrel, &toasttup->t_self);
  else
   simple_heap_delete(toastrel, &toasttup->t_self);
 }




 systable_endscan_ordered(toastscan);
 toast_close_indexes(toastidxs, num_indexes, RowExclusiveLock);
 table_close(toastrel, RowExclusiveLock);
}

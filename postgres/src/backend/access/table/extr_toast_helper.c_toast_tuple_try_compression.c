
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ttc_flags; TYPE_2__* ttc_attr; int * ttc_values; } ;
typedef TYPE_1__ ToastTupleContext ;
struct TYPE_5__ {int tai_colflags; int tai_size; } ;
typedef TYPE_2__ ToastAttrInfo ;
typedef int Datum ;


 int * DatumGetPointer (int ) ;
 int TOASTCOL_INCOMPRESSIBLE ;
 int TOASTCOL_NEEDS_FREE ;
 int TOAST_NEEDS_CHANGE ;
 int TOAST_NEEDS_FREE ;
 int VARSIZE (int *) ;
 int pfree (int *) ;
 int toast_compress_datum (int ) ;

void
toast_tuple_try_compression(ToastTupleContext *ttc, int attribute)
{
 Datum *value = &ttc->ttc_values[attribute];
 Datum new_value = toast_compress_datum(*value);
 ToastAttrInfo *attr = &ttc->ttc_attr[attribute];

 if (DatumGetPointer(new_value) != ((void*)0))
 {

  if ((attr->tai_colflags & TOASTCOL_NEEDS_FREE) != 0)
   pfree(DatumGetPointer(*value));
  *value = new_value;
  attr->tai_colflags |= TOASTCOL_NEEDS_FREE;
  attr->tai_size = VARSIZE(DatumGetPointer(*value));
  ttc->ttc_flags |= (TOAST_NEEDS_CHANGE | TOAST_NEEDS_FREE);
 }
 else
 {

  attr->tai_colflags |= TOASTCOL_INCOMPRESSIBLE;
 }
}

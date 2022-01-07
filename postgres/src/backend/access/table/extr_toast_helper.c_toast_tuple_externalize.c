
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ttc_flags; int ttc_rel; TYPE_2__* ttc_attr; int * ttc_values; } ;
typedef TYPE_1__ ToastTupleContext ;
struct TYPE_5__ {int tai_colflags; int tai_oldexternal; } ;
typedef TYPE_2__ ToastAttrInfo ;
typedef int Datum ;


 int DatumGetPointer (int ) ;
 int TOASTCOL_IGNORE ;
 int TOASTCOL_NEEDS_FREE ;
 int TOAST_NEEDS_CHANGE ;
 int TOAST_NEEDS_FREE ;
 int pfree (int ) ;
 int toast_save_datum (int ,int ,int ,int) ;

void
toast_tuple_externalize(ToastTupleContext *ttc, int attribute, int options)
{
 Datum *value = &ttc->ttc_values[attribute];
 Datum old_value = *value;
 ToastAttrInfo *attr = &ttc->ttc_attr[attribute];

 attr->tai_colflags |= TOASTCOL_IGNORE;
 *value = toast_save_datum(ttc->ttc_rel, old_value, attr->tai_oldexternal,
         options);
 if ((attr->tai_colflags & TOASTCOL_NEEDS_FREE) != 0)
  pfree(DatumGetPointer(old_value));
 attr->tai_colflags |= TOASTCOL_NEEDS_FREE;
 ttc->ttc_flags |= (TOAST_NEEDS_CHANGE | TOAST_NEEDS_FREE);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct varlena {int dummy; } ;
typedef TYPE_3__* TupleDesc ;
struct TYPE_12__ {int ttc_flags; TYPE_2__* ttc_attr; int * ttc_values; scalar_t__* ttc_isnull; int * ttc_oldisnull; int * ttc_oldvalues; TYPE_1__* ttc_rel; } ;
typedef TYPE_4__ ToastTupleContext ;
struct TYPE_13__ {int attlen; char attstorage; } ;
struct TYPE_11__ {int natts; } ;
struct TYPE_10__ {int tai_colflags; int tai_size; struct varlena* tai_oldexternal; } ;
struct TYPE_9__ {TYPE_3__* rd_att; } ;
typedef TYPE_5__* Form_pg_attribute ;


 scalar_t__ DatumGetPointer (int ) ;
 int PointerGetDatum (struct varlena*) ;
 int TOASTCOL_IGNORE ;
 int TOASTCOL_NEEDS_DELETE_OLD ;
 int TOASTCOL_NEEDS_FREE ;
 int TOAST_HAS_NULLS ;
 int TOAST_NEEDS_CHANGE ;
 int TOAST_NEEDS_DELETE_OLD ;
 int TOAST_NEEDS_FREE ;
 TYPE_5__* TupleDescAttr (TYPE_3__*,int) ;
 scalar_t__ VARATT_IS_EXTERNAL (struct varlena*) ;
 scalar_t__ VARATT_IS_EXTERNAL_ONDISK (struct varlena*) ;
 int VARSIZE_ANY (struct varlena*) ;
 int VARSIZE_EXTERNAL (struct varlena*) ;
 struct varlena* detoast_attr (struct varlena*) ;
 struct varlena* detoast_external_attr (struct varlena*) ;
 scalar_t__ memcmp (char*,char*,int ) ;

void
toast_tuple_init(ToastTupleContext *ttc)
{
 TupleDesc tupleDesc = ttc->ttc_rel->rd_att;
 int numAttrs = tupleDesc->natts;
 int i;

 ttc->ttc_flags = 0;

 for (i = 0; i < numAttrs; i++)
 {
  Form_pg_attribute att = TupleDescAttr(tupleDesc, i);
  struct varlena *old_value;
  struct varlena *new_value;

  ttc->ttc_attr[i].tai_colflags = 0;
  ttc->ttc_attr[i].tai_oldexternal = ((void*)0);

  if (ttc->ttc_oldvalues != ((void*)0))
  {



   old_value =
    (struct varlena *) DatumGetPointer(ttc->ttc_oldvalues[i]);
   new_value =
    (struct varlena *) DatumGetPointer(ttc->ttc_values[i]);





   if (att->attlen == -1 && !ttc->ttc_oldisnull[i] &&
    VARATT_IS_EXTERNAL_ONDISK(old_value))
   {
    if (ttc->ttc_isnull[i] ||
     !VARATT_IS_EXTERNAL_ONDISK(new_value) ||
     memcmp((char *) old_value, (char *) new_value,
         VARSIZE_EXTERNAL(old_value)) != 0)
    {




     ttc->ttc_attr[i].tai_colflags |= TOASTCOL_NEEDS_DELETE_OLD;
     ttc->ttc_flags |= TOAST_NEEDS_DELETE_OLD;
    }
    else
    {





     ttc->ttc_attr[i].tai_colflags |= TOASTCOL_IGNORE;
     continue;
    }
   }
  }
  else
  {



   new_value = (struct varlena *) DatumGetPointer(ttc->ttc_values[i]);
  }




  if (ttc->ttc_isnull[i])
  {
   ttc->ttc_attr[i].tai_colflags |= TOASTCOL_IGNORE;
   ttc->ttc_flags |= TOAST_HAS_NULLS;
   continue;
  }




  if (att->attlen == -1)
  {



   if (att->attstorage == 'p')
    ttc->ttc_attr[i].tai_colflags |= TOASTCOL_IGNORE;
   if (VARATT_IS_EXTERNAL(new_value))
   {
    ttc->ttc_attr[i].tai_oldexternal = new_value;
    if (att->attstorage == 'p')
     new_value = detoast_attr(new_value);
    else
     new_value = detoast_external_attr(new_value);
    ttc->ttc_values[i] = PointerGetDatum(new_value);
    ttc->ttc_attr[i].tai_colflags |= TOASTCOL_NEEDS_FREE;
    ttc->ttc_flags |= (TOAST_NEEDS_CHANGE | TOAST_NEEDS_FREE);
   }




   ttc->ttc_attr[i].tai_size = VARSIZE_ANY(new_value);
  }
  else
  {



   ttc->ttc_attr[i].tai_colflags |= TOASTCOL_IGNORE;
  }
 }
}

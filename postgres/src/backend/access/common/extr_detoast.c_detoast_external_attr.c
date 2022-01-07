
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varlena {int dummy; } ;
struct varatt_indirect {scalar_t__ pointer; } ;
typedef int Size ;
typedef int ExpandedObjectHeader ;


 int Assert (int) ;
 int * DatumGetEOHP (int ) ;
 int EOH_flatten_into (int *,void*,int ) ;
 int EOH_get_flat_size (int *) ;
 int PointerGetDatum (struct varlena*) ;
 int VARATT_EXTERNAL_GET_POINTER (struct varatt_indirect,struct varlena*) ;
 scalar_t__ VARATT_IS_EXTERNAL (struct varlena*) ;
 scalar_t__ VARATT_IS_EXTERNAL_EXPANDED (struct varlena*) ;
 scalar_t__ VARATT_IS_EXTERNAL_INDIRECT (struct varlena*) ;
 scalar_t__ VARATT_IS_EXTERNAL_ONDISK (struct varlena*) ;
 int VARSIZE_ANY (struct varlena*) ;
 int memcpy (struct varlena*,struct varlena*,int ) ;
 scalar_t__ palloc (int ) ;
 struct varlena* toast_fetch_datum (struct varlena*) ;

struct varlena *
detoast_external_attr(struct varlena *attr)
{
 struct varlena *result;

 if (VARATT_IS_EXTERNAL_ONDISK(attr))
 {



  result = toast_fetch_datum(attr);
 }
 else if (VARATT_IS_EXTERNAL_INDIRECT(attr))
 {



  struct varatt_indirect redirect;

  VARATT_EXTERNAL_GET_POINTER(redirect, attr);
  attr = (struct varlena *) redirect.pointer;


  Assert(!VARATT_IS_EXTERNAL_INDIRECT(attr));


  if (VARATT_IS_EXTERNAL(attr))
   return detoast_external_attr(attr);





  result = (struct varlena *) palloc(VARSIZE_ANY(attr));
  memcpy(result, attr, VARSIZE_ANY(attr));
 }
 else if (VARATT_IS_EXTERNAL_EXPANDED(attr))
 {



  ExpandedObjectHeader *eoh;
  Size resultsize;

  eoh = DatumGetEOHP(PointerGetDatum(attr));
  resultsize = EOH_get_flat_size(eoh);
  result = (struct varlena *) palloc(resultsize);
  EOH_flatten_into(eoh, (void *) result, resultsize);
 }
 else
 {



  result = attr;
 }

 return result;
}

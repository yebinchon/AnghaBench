
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varlena {int dummy; } ;
struct varatt_indirect {scalar_t__ pointer; } ;
typedef scalar_t__ Size ;


 int Assert (int) ;
 int SET_VARSIZE (struct varlena*,scalar_t__) ;
 int VARATT_EXTERNAL_GET_POINTER (struct varatt_indirect,struct varlena*) ;
 scalar_t__ VARATT_IS_COMPRESSED (struct varlena*) ;
 int VARATT_IS_EXTENDED (struct varlena*) ;
 scalar_t__ VARATT_IS_EXTERNAL_EXPANDED (struct varlena*) ;
 scalar_t__ VARATT_IS_EXTERNAL_INDIRECT (struct varlena*) ;
 scalar_t__ VARATT_IS_EXTERNAL_ONDISK (struct varlena*) ;
 scalar_t__ VARATT_IS_SHORT (struct varlena*) ;
 struct varlena* VARDATA (struct varlena*) ;
 struct varlena* VARDATA_SHORT (struct varlena*) ;
 scalar_t__ VARHDRSZ ;
 scalar_t__ VARHDRSZ_SHORT ;
 scalar_t__ VARSIZE_ANY (struct varlena*) ;
 scalar_t__ VARSIZE_SHORT (struct varlena*) ;
 struct varlena* detoast_external_attr (struct varlena*) ;
 int memcpy (struct varlena*,struct varlena*,scalar_t__) ;
 scalar_t__ palloc (scalar_t__) ;
 int pfree (struct varlena*) ;
 struct varlena* toast_decompress_datum (struct varlena*) ;
 struct varlena* toast_fetch_datum (struct varlena*) ;

struct varlena *
detoast_attr(struct varlena *attr)
{
 if (VARATT_IS_EXTERNAL_ONDISK(attr))
 {



  attr = toast_fetch_datum(attr);

  if (VARATT_IS_COMPRESSED(attr))
  {
   struct varlena *tmp = attr;

   attr = toast_decompress_datum(tmp);
   pfree(tmp);
  }
 }
 else if (VARATT_IS_EXTERNAL_INDIRECT(attr))
 {



  struct varatt_indirect redirect;

  VARATT_EXTERNAL_GET_POINTER(redirect, attr);
  attr = (struct varlena *) redirect.pointer;


  Assert(!VARATT_IS_EXTERNAL_INDIRECT(attr));


  attr = detoast_attr(attr);


  if (attr == (struct varlena *) redirect.pointer)
  {
   struct varlena *result;

   result = (struct varlena *) palloc(VARSIZE_ANY(attr));
   memcpy(result, attr, VARSIZE_ANY(attr));
   attr = result;
  }
 }
 else if (VARATT_IS_EXTERNAL_EXPANDED(attr))
 {



  attr = detoast_external_attr(attr);

  Assert(!VARATT_IS_EXTENDED(attr));
 }
 else if (VARATT_IS_COMPRESSED(attr))
 {



  attr = toast_decompress_datum(attr);
 }
 else if (VARATT_IS_SHORT(attr))
 {



  Size data_size = VARSIZE_SHORT(attr) - VARHDRSZ_SHORT;
  Size new_size = data_size + VARHDRSZ;
  struct varlena *new_attr;

  new_attr = (struct varlena *) palloc(new_size);
  SET_VARSIZE(new_attr, new_size);
  memcpy(VARDATA(new_attr), VARDATA_SHORT(attr), data_size);
  attr = new_attr;
 }

 return attr;
}

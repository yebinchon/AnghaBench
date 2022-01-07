
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varlena {int dummy; } ;
typedef int Size ;


 scalar_t__ VARATT_IS_EXTENDED (struct varlena*) ;
 int VARSIZE (struct varlena*) ;
 struct varlena* detoast_attr (struct varlena*) ;
 int memcpy (struct varlena*,struct varlena*,int ) ;
 scalar_t__ palloc (int ) ;

struct varlena *
pg_detoast_datum_copy(struct varlena *datum)
{
 if (VARATT_IS_EXTENDED(datum))
  return detoast_attr(datum);
 else
 {

  Size len = VARSIZE(datum);
  struct varlena *result = (struct varlena *) palloc(len);

  memcpy(result, datum, len);
  return result;
 }
}

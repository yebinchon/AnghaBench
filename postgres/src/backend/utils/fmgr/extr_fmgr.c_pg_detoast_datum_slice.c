
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varlena {int dummy; } ;
typedef int int32 ;


 struct varlena* detoast_attr_slice (struct varlena*,int ,int ) ;

struct varlena *
pg_detoast_datum_slice(struct varlena *datum, int32 first, int32 count)
{

 return detoast_attr_slice(datum, first, count);
}

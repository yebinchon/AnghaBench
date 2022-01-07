
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zval ;
typedef size_t zend_ulong ;
typedef size_t uint32_t ;
struct TYPE_4__ {scalar_t__ ptr; } ;
typedef TYPE_1__ mysqli_object ;
struct TYPE_5__ {scalar_t__ ptr; } ;
typedef int MYSQL_RES ;
typedef TYPE_2__ MYSQLI_RESOURCE ;


 int CHECK_STATUS (int ) ;
 int MYSQLI_STATUS_VALID ;
 int ZVAL_NULL (int *) ;
 int add_index_long (int *,size_t,size_t const) ;
 int array_init (int *) ;
 size_t* mysql_fetch_lengths (int *) ;
 size_t mysql_num_fields (int *) ;

__attribute__((used)) static zval *result_lengths_read(mysqli_object *obj, zval *retval)
{
 MYSQL_RES *p;



 const zend_ulong *ret;

 uint32_t field_count;

 CHECK_STATUS(MYSQLI_STATUS_VALID);
 p = (MYSQL_RES *)((MYSQLI_RESOURCE *)(obj->ptr))->ptr;
 field_count = mysql_num_fields(p);
 if (!p || !field_count || !(ret = mysql_fetch_lengths(p))) {
  ZVAL_NULL(retval);
 } else {
  zend_ulong i;

  array_init(retval);

  for (i = 0; i < field_count; i++) {
   add_index_long(retval, i, ret[i]);
  }
 }
 return retval;
}

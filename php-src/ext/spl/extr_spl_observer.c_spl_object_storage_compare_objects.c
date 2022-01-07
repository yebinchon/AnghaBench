
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zval ;
struct TYPE_3__ {scalar_t__ ce; } ;
typedef TYPE_1__ zend_object ;
typedef int compare_func_t ;
struct TYPE_4__ {int storage; } ;


 int ZEND_COMPARE_OBJECTS_FALLBACK (int *,int *) ;
 scalar_t__ Z_OBJ_P (int *) ;
 TYPE_2__* Z_SPLOBJSTORAGE_P (int *) ;
 scalar_t__ spl_ce_SplObjectStorage ;
 scalar_t__ spl_object_storage_compare_info ;
 int zend_hash_compare (int *,int *,int ,int ) ;

__attribute__((used)) static int spl_object_storage_compare_objects(zval *o1, zval *o2)
{
 zend_object *zo1;
 zend_object *zo2;

 ZEND_COMPARE_OBJECTS_FALLBACK(o1, o2);

 zo1 = (zend_object *)Z_OBJ_P(o1);
 zo2 = (zend_object *)Z_OBJ_P(o2);

 if (zo1->ce != spl_ce_SplObjectStorage || zo2->ce != spl_ce_SplObjectStorage) {
  return 1;
 }

 return zend_hash_compare(&(Z_SPLOBJSTORAGE_P(o1))->storage, &(Z_SPLOBJSTORAGE_P(o2))->storage, (compare_func_t)spl_object_storage_compare_info, 0);
}

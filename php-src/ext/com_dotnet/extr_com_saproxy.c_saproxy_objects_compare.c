
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;


 int ZEND_COMPARE_OBJECTS_FALLBACK (int *,int *) ;

__attribute__((used)) static int saproxy_objects_compare(zval *object1, zval *object2)
{
 ZEND_COMPARE_OBJECTS_FALLBACK(object1, object2);
 return -1;
}

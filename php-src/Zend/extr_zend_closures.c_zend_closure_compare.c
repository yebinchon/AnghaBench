
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;


 int ZEND_COMPARE_OBJECTS_FALLBACK (int *,int *) ;
 scalar_t__ Z_OBJ_P (int *) ;

__attribute__((used)) static int zend_closure_compare(zval *o1, zval *o2)
{
 ZEND_COMPARE_OBJECTS_FALLBACK(o1, o2);
 return Z_OBJ_P(o1) != Z_OBJ_P(o2);
}

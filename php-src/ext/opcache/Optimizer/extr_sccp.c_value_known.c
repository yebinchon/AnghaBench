
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_bool ;


 int IS_BOT (int *) ;
 int IS_TOP (int *) ;

__attribute__((used)) static inline zend_bool value_known(zval *zv) {
 return !IS_TOP(zv) && !IS_BOT(zv);
}

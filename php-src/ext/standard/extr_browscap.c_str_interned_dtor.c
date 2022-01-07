
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;


 int Z_STR_P (int *) ;
 int zend_string_release (int ) ;

__attribute__((used)) static void str_interned_dtor(zval *zv) {
 zend_string_release(Z_STR_P(zv));
}

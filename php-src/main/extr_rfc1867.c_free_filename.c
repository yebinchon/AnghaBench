
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_string ;


 int * Z_STR_P (int *) ;
 int zend_string_release_ex (int *,int ) ;

__attribute__((used)) static void free_filename(zval *el) {
 zend_string *filename = Z_STR_P(el);
 zend_string_release_ex(filename, 0);
}

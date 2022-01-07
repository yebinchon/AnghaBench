
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;


 int Z_PTR_P (int *) ;
 int pefree (int ,int) ;

__attribute__((used)) static void php_xmlreader_free_prop_handler(zval *el) {
 pefree(Z_PTR_P(el), 1);
}

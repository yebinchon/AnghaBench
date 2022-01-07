
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zend_object ;
struct TYPE_3__ {int error; scalar_t__ dest; scalar_t__ src; } ;
typedef TYPE_1__ php_converter_object ;


 int intl_error_reset (int *) ;
 TYPE_1__* php_converter_fetch_object (int *) ;
 int ucnv_close (scalar_t__) ;

__attribute__((used)) static void php_converter_dtor_object(zend_object *obj) {
 php_converter_object *objval = php_converter_fetch_object(obj);

 if (objval->src) {
  ucnv_close(objval->src);
 }

 if (objval->dest) {
  ucnv_close(objval->dest);
 }

 intl_error_reset(&(objval->error));
}

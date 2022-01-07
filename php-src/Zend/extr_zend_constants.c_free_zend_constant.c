
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int zval ;
struct TYPE_6__ {scalar_t__ name; int value; } ;
typedef TYPE_1__ zend_constant ;


 int CONST_PERSISTENT ;
 int ZEND_CONSTANT_FLAGS (TYPE_1__*) ;
 TYPE_1__* Z_PTR_P (int *) ;
 int efree (TYPE_1__*) ;
 int free (TYPE_1__*) ;
 int zend_string_release_ex (scalar_t__,int) ;
 int zval_internal_ptr_dtor (int *) ;
 int zval_ptr_dtor_nogc (int *) ;

void free_zend_constant(zval *zv)
{
 zend_constant *c = Z_PTR_P(zv);

 if (!(ZEND_CONSTANT_FLAGS(c) & CONST_PERSISTENT)) {
  zval_ptr_dtor_nogc(&c->value);
  if (c->name) {
   zend_string_release_ex(c->name, 0);
  }
  efree(c);
 } else {
  zval_internal_ptr_dtor(&c->value);
  if (c->name) {
   zend_string_release_ex(c->name, 1);
  }
  free(c);
 }
}

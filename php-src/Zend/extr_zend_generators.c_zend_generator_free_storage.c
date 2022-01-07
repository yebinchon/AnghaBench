
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zend_object ;
struct TYPE_5__ {int ht; } ;
struct TYPE_6__ {int children; TYPE_1__ child; } ;
struct TYPE_7__ {scalar_t__ iterator; int std; TYPE_2__ node; int retval; int key; int value; } ;
typedef TYPE_3__ zend_generator ;


 scalar_t__ EXPECTED (int) ;
 scalar_t__ UNEXPECTED (int) ;
 int Z_ISUNDEF (int ) ;
 int efree (int ) ;
 int zend_generator_close (TYPE_3__*,int ) ;
 int zend_hash_destroy (int ) ;
 int zend_iterator_dtor (scalar_t__) ;
 int zend_object_std_dtor (int *) ;
 int zval_ptr_dtor (int *) ;

__attribute__((used)) static void zend_generator_free_storage(zend_object *object)
{
 zend_generator *generator = (zend_generator*) object;

 zend_generator_close(generator, 0);


 zval_ptr_dtor(&generator->value);
 zval_ptr_dtor(&generator->key);

 if (EXPECTED(!Z_ISUNDEF(generator->retval))) {
  zval_ptr_dtor(&generator->retval);
 }

 if (UNEXPECTED(generator->node.children > 1)) {
  zend_hash_destroy(generator->node.child.ht);
  efree(generator->node.child.ht);
 }

 zend_object_std_dtor(&generator->std);

 if (generator->iterator) {
  zend_iterator_dtor(generator->iterator);
 }
}

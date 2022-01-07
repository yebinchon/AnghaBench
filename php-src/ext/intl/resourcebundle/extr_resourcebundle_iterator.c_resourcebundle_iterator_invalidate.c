
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zend_object_iterator ;
struct TYPE_2__ {int * currentkey; int current; } ;
typedef TYPE_1__ ResourceBundle_iterator ;


 int ZVAL_UNDEF (int *) ;
 int Z_ISUNDEF (int ) ;
 int efree (int *) ;
 int zval_ptr_dtor (int *) ;

__attribute__((used)) static void resourcebundle_iterator_invalidate( zend_object_iterator *iter )
{
 ResourceBundle_iterator *iterator = (ResourceBundle_iterator *) iter;

 if (!Z_ISUNDEF(iterator->current)) {
  zval_ptr_dtor( &iterator->current );
  ZVAL_UNDEF(&iterator->current);
 }
 if (iterator->currentkey) {
  efree( iterator->currentkey );
  iterator->currentkey = ((void*)0);
 }
}

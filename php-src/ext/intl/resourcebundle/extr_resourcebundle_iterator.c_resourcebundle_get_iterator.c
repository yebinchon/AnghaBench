
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int zval ;
typedef int zend_object_iterator ;
typedef int zend_class_entry ;
struct TYPE_8__ {int * funcs; int data; } ;
struct TYPE_7__ {int is_table; scalar_t__ i; int * currentkey; int current; int length; TYPE_1__* subject; TYPE_3__ intern; } ;
struct TYPE_6__ {int me; } ;
typedef TYPE_1__ ResourceBundle_object ;
typedef TYPE_2__ ResourceBundle_iterator ;


 int E_ERROR ;
 scalar_t__ URES_TABLE ;
 int ZVAL_OBJ (int *,int ) ;
 int ZVAL_UNDEF (int *) ;
 int Z_ADDREF_P (int *) ;
 TYPE_1__* Z_INTL_RESOURCEBUNDLE_P (int *) ;
 int Z_OBJ_P (int *) ;
 TYPE_2__* emalloc (int) ;
 int php_error (int ,char*) ;
 int resourcebundle_iterator_funcs ;
 int ures_getSize (int ) ;
 scalar_t__ ures_getType (int ) ;
 int zend_iterator_init (TYPE_3__*) ;

zend_object_iterator *resourcebundle_get_iterator( zend_class_entry *ce, zval *object, int byref )
{
 ResourceBundle_object *rb = Z_INTL_RESOURCEBUNDLE_P(object );
 ResourceBundle_iterator *iterator = emalloc( sizeof( ResourceBundle_iterator ) );

 if (byref) {
      php_error( E_ERROR, "ResourceBundle does not support writable iterators" );
 }

 zend_iterator_init(&iterator->intern);
 Z_ADDREF_P(object);
 ZVAL_OBJ(&iterator->intern.data, Z_OBJ_P(object));
 iterator->intern.funcs = &resourcebundle_iterator_funcs;

 iterator->subject = rb;




 iterator->is_table = (ures_getType( rb->me ) == URES_TABLE);
 iterator->length = ures_getSize( rb->me );

 ZVAL_UNDEF(&iterator->current);
 iterator->currentkey = ((void*)0);
 iterator->i = 0;

 return (zend_object_iterator *) iterator;
}

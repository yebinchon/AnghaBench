
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zend_object ;
struct TYPE_4__ {int zend; scalar_t__ child; scalar_t__ me; } ;
typedef TYPE_1__ ResourceBundle_object ;


 int INTL_DATA_ERROR_P (TYPE_1__*) ;
 int intl_error_reset (int ) ;
 TYPE_1__* php_intl_resourcebundle_fetch_object (int *) ;
 int ures_close (scalar_t__) ;
 int zend_object_std_dtor (int *) ;

__attribute__((used)) static void ResourceBundle_object_free( zend_object *object )
{
 ResourceBundle_object *rb = php_intl_resourcebundle_fetch_object(object);


 intl_error_reset( INTL_DATA_ERROR_P(rb) );

 if (rb->me) {
  ures_close( rb->me );
 }
 if (rb->child) {
  ures_close( rb->child );
 }

 zend_object_std_dtor( &rb->zend );
}

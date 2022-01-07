
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int create_object; } ;
typedef TYPE_1__ zend_class_entry ;
struct TYPE_7__ {int free_obj; int dtor_obj; int clone_obj; int offset; } ;


 int INIT_CLASS_ENTRY (TYPE_1__,char*,int ) ;
 int IntlDateFormatter_ce_ptr ;
 int IntlDateFormatter_class_functions ;
 TYPE_3__ IntlDateFormatter_handlers ;
 int IntlDateFormatter_object ;
 int IntlDateFormatter_object_clone ;
 int IntlDateFormatter_object_create ;
 int IntlDateFormatter_object_dtor ;
 int IntlDateFormatter_object_free ;
 int XtOffsetOf (int ,int ) ;
 int memcpy (TYPE_3__*,int *,int) ;
 int std_object_handlers ;
 int zend_register_internal_class (TYPE_1__*) ;
 int zo ;

void dateformat_register_IntlDateFormatter_class( void )
{
 zend_class_entry ce;


 INIT_CLASS_ENTRY( ce, "IntlDateFormatter", IntlDateFormatter_class_functions );
 ce.create_object = IntlDateFormatter_object_create;
 IntlDateFormatter_ce_ptr = zend_register_internal_class( &ce );

 memcpy(&IntlDateFormatter_handlers, &std_object_handlers,
  sizeof IntlDateFormatter_handlers);
 IntlDateFormatter_handlers.offset = XtOffsetOf(IntlDateFormatter_object, zo);
 IntlDateFormatter_handlers.clone_obj = IntlDateFormatter_object_clone;
 IntlDateFormatter_handlers.dtor_obj = IntlDateFormatter_object_dtor;
 IntlDateFormatter_handlers.free_obj = IntlDateFormatter_object_free;
}

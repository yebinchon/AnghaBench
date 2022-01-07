
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int create_object; } ;
typedef TYPE_1__ zend_class_entry ;
struct TYPE_7__ {int free_obj; int clone_obj; int offset; } ;


 int INIT_CLASS_ENTRY (TYPE_1__,char*,int ) ;
 int MessageFormatter_ce_ptr ;
 int MessageFormatter_class_functions ;
 TYPE_3__ MessageFormatter_handlers ;
 int MessageFormatter_object ;
 int MessageFormatter_object_clone ;
 int MessageFormatter_object_create ;
 int MessageFormatter_object_free ;
 int XtOffsetOf (int ,int ) ;
 int memcpy (TYPE_3__*,int *,int) ;
 int std_object_handlers ;
 int zend_register_internal_class (TYPE_1__*) ;
 int zo ;

void msgformat_register_class( void )
{
 zend_class_entry ce;


 INIT_CLASS_ENTRY( ce, "MessageFormatter", MessageFormatter_class_functions );
 ce.create_object = MessageFormatter_object_create;
 MessageFormatter_ce_ptr = zend_register_internal_class( &ce );

 memcpy(&MessageFormatter_handlers, &std_object_handlers,
  sizeof MessageFormatter_handlers);
 MessageFormatter_handlers.offset = XtOffsetOf(MessageFormatter_object, zo);
 MessageFormatter_handlers.clone_obj = MessageFormatter_object_clone;
 MessageFormatter_handlers.free_obj = MessageFormatter_object_free;
}

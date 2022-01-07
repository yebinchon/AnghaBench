
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ op_array_persist; scalar_t__ op_array_persist_calc; scalar_t__ op_array_handler; scalar_t__ op_array_dtor; scalar_t__ op_array_ctor; int handle; } ;
typedef TYPE_1__ zend_extension ;
typedef int DL_HANDLE ;


 int SUCCESS ;
 int ZEND_EXTENSIONS_HAVE_OP_ARRAY_CTOR ;
 int ZEND_EXTENSIONS_HAVE_OP_ARRAY_DTOR ;
 int ZEND_EXTENSIONS_HAVE_OP_ARRAY_HANDLER ;
 int ZEND_EXTENSIONS_HAVE_OP_ARRAY_PERSIST ;
 int ZEND_EXTENSIONS_HAVE_OP_ARRAY_PERSIST_CALC ;
 int ZEND_EXTMSG_NEW_EXTENSION ;
 int zend_extension_dispatch_message (int ,TYPE_1__*) ;
 int zend_extension_flags ;
 int zend_extensions ;
 int zend_llist_add_element (int *,TYPE_1__*) ;

int zend_register_extension(zend_extension *new_extension, DL_HANDLE handle)
{
 return SUCCESS;
}

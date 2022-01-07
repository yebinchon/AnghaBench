
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zval ;
typedef int zend_string ;
typedef TYPE_1__* soapServicePtr ;
typedef int sdlFunctionPtr ;
struct TYPE_3__ {scalar_t__ send_errors; } ;


 int EG (int ) ;
 char* ZSTR_VAL (int *) ;
 int ZVAL_OBJ (int *,int ) ;
 int Z_OBJCE (int ) ;
 int add_soap_fault_ex (int *,int *,char*,char*,int *,int *) ;
 int exception ;
 scalar_t__ instanceof_function (int ,int ) ;
 int soap_fault_class_entry ;
 int soap_server_fault_ex (int ,int *,int *) ;
 int zend_ce_error ;
 int zend_read_property (int ,int *,char*,int,int ,int *) ;
 int zend_string_release_ex (int *,int ) ;
 int * zval_get_string (int ) ;

__attribute__((used)) static void _soap_server_exception(soapServicePtr service, sdlFunctionPtr function, zval *this_ptr)
{
 zval exception_object;

 ZVAL_OBJ(&exception_object, EG(exception));
 if (instanceof_function(Z_OBJCE(exception_object), soap_fault_class_entry)) {
  soap_server_fault_ex(function, &exception_object, ((void*)0));
 } else if (instanceof_function(Z_OBJCE(exception_object), zend_ce_error)) {
  if (service->send_errors) {
   zval rv;
   zend_string *msg = zval_get_string(zend_read_property(zend_ce_error, &exception_object, "message", sizeof("message")-1, 0, &rv));
   add_soap_fault_ex(&exception_object, this_ptr, "Server", ZSTR_VAL(msg), ((void*)0), ((void*)0));
   zend_string_release_ex(msg, 0);
  } else {
   add_soap_fault_ex(&exception_object, this_ptr, "Server", "Internal Error", ((void*)0), ((void*)0));
  }
  soap_server_fault_ex(function, &exception_object, ((void*)0));
 }
}

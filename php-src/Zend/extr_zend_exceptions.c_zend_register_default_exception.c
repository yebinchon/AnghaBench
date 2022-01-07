
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_16__ ;
typedef struct TYPE_19__ TYPE_15__ ;
typedef struct TYPE_18__ TYPE_12__ ;


typedef int zend_object_handlers ;
typedef int zend_class_entry ;
struct TYPE_23__ {void* create_object; } ;
struct TYPE_22__ {void* create_object; } ;
struct TYPE_21__ {void* create_object; } ;
struct TYPE_20__ {int * clone_obj; } ;
struct TYPE_19__ {void* create_object; } ;
struct TYPE_18__ {void* create_object; } ;


 int E_ERROR ;
 int INIT_CLASS_ENTRY (int ,char*,int *) ;
 int REGISTER_MAGIC_INTERFACE (int ,int ) ;
 int Throwable ;
 int ZEND_ACC_PRIVATE ;
 int ZEND_ACC_PROTECTED ;
 int * default_exception_functions ;
 TYPE_16__ default_exception_handlers ;
 int * error_exception_functions ;
 int memcpy (TYPE_16__*,int *,int) ;
 int std_object_handlers ;
 int throwable ;
 TYPE_15__* zend_ce_argument_count_error ;
 TYPE_1__* zend_ce_arithmetic_error ;
 TYPE_1__* zend_ce_compile_error ;
 TYPE_12__* zend_ce_division_by_zero_error ;
 TYPE_1__* zend_ce_error ;
 TYPE_1__* zend_ce_error_exception ;
 TYPE_1__* zend_ce_exception ;
 TYPE_8__* zend_ce_parse_error ;
 int zend_ce_throwable ;
 TYPE_1__* zend_ce_type_error ;
 TYPE_6__* zend_ce_value_error ;
 int zend_class_implements (TYPE_1__*,int,int ) ;
 int zend_declare_property_long (TYPE_1__*,char*,int,int ,int ) ;
 int zend_declare_property_null (TYPE_1__*,char*,int,int ) ;
 int zend_declare_property_string (TYPE_1__*,char*,int,char*,int ) ;
 void* zend_default_exception_new ;
 void* zend_error_exception_new ;
 void* zend_register_internal_class_ex (int *,TYPE_1__*) ;

void zend_register_default_exception(void)
{
 zend_class_entry ce;

 REGISTER_MAGIC_INTERFACE(throwable, Throwable);

 memcpy(&default_exception_handlers, &std_object_handlers, sizeof(zend_object_handlers));
 default_exception_handlers.clone_obj = ((void*)0);

 INIT_CLASS_ENTRY(ce, "Exception", default_exception_functions);
 zend_ce_exception = zend_register_internal_class_ex(&ce, ((void*)0));
 zend_ce_exception->create_object = zend_default_exception_new;
 zend_class_implements(zend_ce_exception, 1, zend_ce_throwable);

 zend_declare_property_string(zend_ce_exception, "message", sizeof("message")-1, "", ZEND_ACC_PROTECTED);
 zend_declare_property_string(zend_ce_exception, "string", sizeof("string")-1, "", ZEND_ACC_PRIVATE);
 zend_declare_property_long(zend_ce_exception, "code", sizeof("code")-1, 0, ZEND_ACC_PROTECTED);
 zend_declare_property_null(zend_ce_exception, "file", sizeof("file")-1, ZEND_ACC_PROTECTED);
 zend_declare_property_null(zend_ce_exception, "line", sizeof("line")-1, ZEND_ACC_PROTECTED);
 zend_declare_property_null(zend_ce_exception, "trace", sizeof("trace")-1, ZEND_ACC_PRIVATE);
 zend_declare_property_null(zend_ce_exception, "previous", sizeof("previous")-1, ZEND_ACC_PRIVATE);

 INIT_CLASS_ENTRY(ce, "ErrorException", error_exception_functions);
 zend_ce_error_exception = zend_register_internal_class_ex(&ce, zend_ce_exception);
 zend_ce_error_exception->create_object = zend_error_exception_new;
 zend_declare_property_long(zend_ce_error_exception, "severity", sizeof("severity")-1, E_ERROR, ZEND_ACC_PROTECTED);

 INIT_CLASS_ENTRY(ce, "Error", default_exception_functions);
 zend_ce_error = zend_register_internal_class_ex(&ce, ((void*)0));
 zend_ce_error->create_object = zend_default_exception_new;
 zend_class_implements(zend_ce_error, 1, zend_ce_throwable);

 zend_declare_property_string(zend_ce_error, "message", sizeof("message")-1, "", ZEND_ACC_PROTECTED);
 zend_declare_property_string(zend_ce_error, "string", sizeof("string")-1, "", ZEND_ACC_PRIVATE);
 zend_declare_property_long(zend_ce_error, "code", sizeof("code")-1, 0, ZEND_ACC_PROTECTED);
 zend_declare_property_null(zend_ce_error, "file", sizeof("file")-1, ZEND_ACC_PROTECTED);
 zend_declare_property_null(zend_ce_error, "line", sizeof("line")-1, ZEND_ACC_PROTECTED);
 zend_declare_property_null(zend_ce_error, "trace", sizeof("trace")-1, ZEND_ACC_PRIVATE);
 zend_declare_property_null(zend_ce_error, "previous", sizeof("previous")-1, ZEND_ACC_PRIVATE);

 INIT_CLASS_ENTRY(ce, "CompileError", ((void*)0));
 zend_ce_compile_error = zend_register_internal_class_ex(&ce, zend_ce_error);
 zend_ce_compile_error->create_object = zend_default_exception_new;

 INIT_CLASS_ENTRY(ce, "ParseError", ((void*)0));
 zend_ce_parse_error = zend_register_internal_class_ex(&ce, zend_ce_compile_error);
 zend_ce_parse_error->create_object = zend_default_exception_new;

 INIT_CLASS_ENTRY(ce, "TypeError", ((void*)0));
 zend_ce_type_error = zend_register_internal_class_ex(&ce, zend_ce_error);
 zend_ce_type_error->create_object = zend_default_exception_new;

 INIT_CLASS_ENTRY(ce, "ArgumentCountError", ((void*)0));
 zend_ce_argument_count_error = zend_register_internal_class_ex(&ce, zend_ce_type_error);
 zend_ce_argument_count_error->create_object = zend_default_exception_new;

 INIT_CLASS_ENTRY(ce, "ValueError", ((void*)0));
 zend_ce_value_error = zend_register_internal_class_ex(&ce, zend_ce_error);
 zend_ce_value_error->create_object = zend_default_exception_new;

 INIT_CLASS_ENTRY(ce, "ArithmeticError", ((void*)0));
 zend_ce_arithmetic_error = zend_register_internal_class_ex(&ce, zend_ce_error);
 zend_ce_arithmetic_error->create_object = zend_default_exception_new;

 INIT_CLASS_ENTRY(ce, "DivisionByZeroError", ((void*)0));
 zend_ce_division_by_zero_error = zend_register_internal_class_ex(&ce, zend_ce_arithmetic_error);
 zend_ce_division_by_zero_error->create_object = zend_default_exception_new;
}

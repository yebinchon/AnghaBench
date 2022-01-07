
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int zend_ulong ;
struct TYPE_13__ {char const* function_name; scalar_t__ opcodes; TYPE_2__* scope; } ;
typedef TYPE_4__ zend_op_array ;
struct TYPE_14__ {int type; } ;
typedef TYPE_5__ zend_function ;
struct TYPE_15__ {scalar_t__ opline; TYPE_5__* func; } ;
typedef TYPE_6__ zend_execute_data ;
typedef int zend_bool ;
struct TYPE_12__ {char const* class; char const* name; } ;
struct TYPE_10__ {char const* name; int line; } ;
struct TYPE_16__ {int type; size_t len; char const* str; int addr; scalar_t__ num; TYPE_3__ method; TYPE_1__ file; } ;
typedef TYPE_7__ phpdbg_param_t ;
typedef int phpdbg_opline_ptr_t ;
struct TYPE_11__ {char const* name; } ;
 int SUCCESS ;
 int ZEND_USER_FUNCTION ;
 size_t ZSTR_LEN (char const*) ;
 char* ZSTR_VAL (char const*) ;
 int memcmp (char const*,char const*,size_t) ;
 size_t strlen (char const*) ;
 char* zend_get_executed_filename () ;
 int zend_get_executed_lineno () ;

__attribute__((used)) static inline zend_bool phpdbg_find_breakpoint_param(phpdbg_param_t *param, zend_execute_data *execute_data)
{
 zend_function *function = execute_data->func;

 switch (param->type) {
  case 130:
  case 128: {


   if (function->type != ZEND_USER_FUNCTION) {
    return 0;
   }

   {
    const char *str = ((void*)0);
    size_t len = 0L;
    zend_op_array *ops = (zend_op_array*)function;
    str = ops->function_name ? ZSTR_VAL(ops->function_name) : "main";
    len = ops->function_name ? ZSTR_LEN(ops->function_name) : strlen(str);

    if (len == param->len && memcmp(param->str, str, len) == SUCCESS) {
     return param->type == 128 || execute_data->opline - ops->opcodes == param->num;
    }
   }
  } break;

  case 132: {
   if (param->file.line == zend_get_executed_lineno()) {
    const char *str = zend_get_executed_filename();
    size_t lengths[2] = {strlen(param->file.name), strlen(str)};

    if (lengths[0] == lengths[1]) {
     return (memcmp(
      param->file.name, str, lengths[0]) == SUCCESS);
    }
   }
  } break;

  case 129:
  case 131: {
   if (function->type != ZEND_USER_FUNCTION) {
    return 0;
   }

   {
    zend_op_array *ops = (zend_op_array*) function;

    if (ops->scope) {
     size_t lengths[2] = { strlen(param->method.class), ZSTR_LEN(ops->scope->name) };
     if (lengths[0] == lengths[1] && memcmp(param->method.class, ops->scope->name, lengths[0]) == SUCCESS) {
      lengths[0] = strlen(param->method.name);
      lengths[1] = ZSTR_LEN(ops->function_name);

      if (lengths[0] == lengths[1] && memcmp(param->method.name, ops->function_name, lengths[0]) == SUCCESS) {
       return param->type == 131 || (execute_data->opline - ops->opcodes) == param->num;
      }
     }
    }
   }
  } break;

  case 133: {
   return ((zend_ulong)(phpdbg_opline_ptr_t)execute_data->opline == param->addr);
  } break;

  default: {

  } break;
 }
 return 0;
}

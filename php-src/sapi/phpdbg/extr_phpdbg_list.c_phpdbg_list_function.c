
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ line_start; scalar_t__ line_end; int filename; } ;
typedef TYPE_2__ zend_op_array ;
struct TYPE_5__ {int function_name; } ;
struct TYPE_7__ {scalar_t__ type; TYPE_1__ common; } ;
typedef TYPE_3__ zend_function ;


 scalar_t__ ZEND_USER_FUNCTION ;
 int ZSTR_VAL (int ) ;
 int phpdbg_error (char*,char*,char*,int ) ;
 int phpdbg_list_file (int ,scalar_t__,scalar_t__,int ) ;

void phpdbg_list_function(const zend_function *fbc)
{
 const zend_op_array *ops;

 if (fbc->type != ZEND_USER_FUNCTION) {
  phpdbg_error("list", "type=\"internalfunction\" function=\"%s\"", "The function requested (%s) is not user defined", ZSTR_VAL(fbc->common.function_name));
  return;
 }

 ops = (zend_op_array *) fbc;

 phpdbg_list_file(ops->filename, ops->line_end - ops->line_start + 1, ops->line_start, 0);
}

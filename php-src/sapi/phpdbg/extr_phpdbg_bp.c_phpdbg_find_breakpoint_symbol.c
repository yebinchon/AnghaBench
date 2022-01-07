
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zend_string ;
struct TYPE_5__ {scalar_t__ function_name; scalar_t__ scope; } ;
typedef TYPE_1__ zend_op_array ;
struct TYPE_6__ {scalar_t__ type; } ;
typedef TYPE_2__ zend_function ;
typedef int phpdbg_breakbase_t ;


 size_t PHPDBG_BREAK_SYM ;
 int * PHPDBG_G (int ) ;
 int ZEND_STRL (char*) ;
 scalar_t__ ZEND_USER_FUNCTION ;
 int bp ;
 int * phpdbg_find_breakpoint_method (TYPE_1__*) ;
 int * zend_hash_find_ptr (int *,int *) ;
 int * zend_hash_str_find_ptr (int *,int ) ;
 int zend_string_release (int *) ;
 int * zend_string_tolower (scalar_t__) ;

__attribute__((used)) static inline phpdbg_breakbase_t *phpdbg_find_breakpoint_symbol(zend_function *fbc)
{
 zend_op_array *ops;

 if (fbc->type != ZEND_USER_FUNCTION) {
  return ((void*)0);
 }

 ops = (zend_op_array *) fbc;

 if (ops->scope) {

  return phpdbg_find_breakpoint_method(ops);
 }

 if (ops->function_name) {
  phpdbg_breakbase_t *brake;
  zend_string *fname = zend_string_tolower(ops->function_name);

  brake = zend_hash_find_ptr(&PHPDBG_G(bp)[PHPDBG_BREAK_SYM], fname);

  zend_string_release(fname);
  return brake;
 } else {
  return zend_hash_str_find_ptr(&PHPDBG_G(bp)[PHPDBG_BREAK_SYM], ZEND_STRL("main"));
 }
}

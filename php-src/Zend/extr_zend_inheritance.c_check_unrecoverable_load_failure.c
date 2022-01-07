
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zval ;
typedef int zend_string ;
struct TYPE_3__ {int ce_flags; int * name; } ;
typedef TYPE_1__ zend_class_entry ;


 scalar_t__ EG (int ) ;
 int E_ERROR ;
 int ZEND_ACC_HAS_UNLINKED_USES ;
 int ZEND_ASSERT (int) ;
 int ZSTR_VAL (int *) ;
 int ZVAL_OBJ (int *,scalar_t__) ;
 int Z_ADDREF (int ) ;
 int exception ;
 int zend_clear_exception () ;
 int zend_error_noreturn (int ,char*,int ,int ) ;
 int * zval_get_string (int *) ;

__attribute__((used)) static void check_unrecoverable_load_failure(zend_class_entry *ce) {




 if (ce->ce_flags & ZEND_ACC_HAS_UNLINKED_USES) {
  zend_string *exception_str;
  zval exception_zv;
  ZEND_ASSERT(EG(exception) && "Exception must have been thrown");
  ZVAL_OBJ(&exception_zv, EG(exception));
  Z_ADDREF(exception_zv);
  zend_clear_exception();
  exception_str = zval_get_string(&exception_zv);
  zend_error_noreturn(E_ERROR,
   "During inheritance of %s with variance dependencies: Uncaught %s", ZSTR_VAL(ce->name), ZSTR_VAL(exception_str));
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int zval ;
struct TYPE_8__ {int function_name; } ;
struct TYPE_9__ {TYPE_1__ common; } ;
typedef TYPE_2__ zend_function ;
struct TYPE_10__ {TYPE_2__* constructor; } ;
typedef TYPE_3__ zend_class_entry ;


 int ZSTR_LEN (int ) ;
 int ZSTR_VAL (int ) ;
 int Z_OBJ_P (int *) ;
 int spl_instantiate (TYPE_3__*,int *) ;
 int zend_call_method (int ,TYPE_3__*,TYPE_2__**,int ,int ,int *,int,int *,int *) ;

__attribute__((used)) static inline int spl_instantiate_arg_ex2(zend_class_entry *pce, zval *retval, zval *arg1, zval *arg2)
{
 zend_function *func = pce->constructor;
 spl_instantiate(pce, retval);

 zend_call_method(Z_OBJ_P(retval), pce, &func, ZSTR_VAL(func->common.function_name), ZSTR_LEN(func->common.function_name), ((void*)0), 2, arg1, arg2);
 return 0;
}

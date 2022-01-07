
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_execute_data ;


 scalar_t__ IS_UNDEF ;
 int ZVAL_LONG (int *,int ) ;
 scalar_t__ Z_TYPE (int ) ;
 int call_user_function (int *,int *,int *,int *,int,int *) ;
 int ctrl_evt ;
 int ctrl_handler ;
 int orig_interrupt_function (int *) ;
 int zval_ptr_dtor (int *) ;

__attribute__((used)) static void php_win32_signal_ctrl_interrupt_function(zend_execute_data *execute_data)
{
 if (IS_UNDEF != Z_TYPE(ctrl_handler)) {
  zval retval, params[1];

  ZVAL_LONG(&params[0], ctrl_evt);


  call_user_function(((void*)0), ((void*)0), &ctrl_handler, &retval, 1, params);
  zval_ptr_dtor(&retval);
 }

 if (orig_interrupt_function) {
  orig_interrupt_function(execute_data);
 }
}

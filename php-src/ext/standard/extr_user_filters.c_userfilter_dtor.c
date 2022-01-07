
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zval ;
struct TYPE_3__ {int abstract; } ;
typedef TYPE_1__ php_stream_filter ;


 int ZVAL_STRINGL (int *,char*,int) ;
 int call_user_function (int *,int *,int *,int *,int ,int *) ;
 int zval_ptr_dtor (int *) ;

__attribute__((used)) static void userfilter_dtor(php_stream_filter *thisfilter)
{
 zval *obj = &thisfilter->abstract;
 zval func_name;
 zval retval;

 if (obj == ((void*)0)) {

  return;
 }

 ZVAL_STRINGL(&func_name, "onclose", sizeof("onclose")-1);

 call_user_function(((void*)0),
   obj,
   &func_name,
   &retval,
   0, ((void*)0));

 zval_ptr_dtor(&retval);
 zval_ptr_dtor(&func_name);


 zval_ptr_dtor(obj);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zval ;
struct TYPE_5__ {TYPE_1__* notifier; } ;
typedef TYPE_2__ php_stream_context ;
struct TYPE_4__ {int ptr; } ;


 int E_WARNING ;
 scalar_t__ FAILURE ;
 int ZVAL_LONG (int *,size_t) ;
 int ZVAL_NULL (int *) ;
 int ZVAL_STRING (int *,char*) ;
 scalar_t__ call_user_function_ex (int *,int *,int *,int *,int,int *,int ,int *) ;
 int php_error_docref (int *,int ,char*) ;
 int zval_ptr_dtor (int *) ;

__attribute__((used)) static void user_space_stream_notifier(php_stream_context *context, int notifycode, int severity,
  char *xmsg, int xcode, size_t bytes_sofar, size_t bytes_max, void * ptr)
{
 zval *callback = &context->notifier->ptr;
 zval retval;
 zval zvs[6];
 int i;

 ZVAL_LONG(&zvs[0], notifycode);
 ZVAL_LONG(&zvs[1], severity);
 if (xmsg) {
  ZVAL_STRING(&zvs[2], xmsg);
 } else {
  ZVAL_NULL(&zvs[2]);
 }
 ZVAL_LONG(&zvs[3], xcode);
 ZVAL_LONG(&zvs[4], bytes_sofar);
 ZVAL_LONG(&zvs[5], bytes_max);

 if (FAILURE == call_user_function_ex(((void*)0), ((void*)0), callback, &retval, 6, zvs, 0, ((void*)0))) {
  php_error_docref(((void*)0), E_WARNING, "failed to call user notifier");
 }
 for (i = 0; i < 6; i++) {
  zval_ptr_dtor(&zvs[i]);
 }
 zval_ptr_dtor(&retval);
}

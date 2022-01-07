
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int zval ;
struct TYPE_6__ {TYPE_2__* notifier; } ;
typedef TYPE_1__ php_stream_context ;
struct TYPE_7__ {int dtor; int ptr; int func; } ;


 int E_WARNING ;
 scalar_t__ IS_ARRAY ;
 int SUCCESS ;
 int ZVAL_COPY (int *,int *) ;
 int Z_ARRVAL_P (int *) ;
 scalar_t__ Z_TYPE_P (int *) ;
 int parse_context_options (TYPE_1__*,int *) ;
 int php_error_docref (int *,int ,char*) ;
 TYPE_2__* php_stream_notification_alloc () ;
 int php_stream_notification_free (TYPE_2__*) ;
 int user_space_stream_notifier ;
 int user_space_stream_notifier_dtor ;
 int * zend_hash_str_find (int ,char*,int) ;

__attribute__((used)) static int parse_context_params(php_stream_context *context, zval *params)
{
 int ret = SUCCESS;
 zval *tmp;

 if (((void*)0) != (tmp = zend_hash_str_find(Z_ARRVAL_P(params), "notification", sizeof("notification")-1))) {

  if (context->notifier) {
   php_stream_notification_free(context->notifier);
   context->notifier = ((void*)0);
  }

  context->notifier = php_stream_notification_alloc();
  context->notifier->func = user_space_stream_notifier;
  ZVAL_COPY(&context->notifier->ptr, tmp);
  context->notifier->dtor = user_space_stream_notifier_dtor;
 }
 if (((void*)0) != (tmp = zend_hash_str_find(Z_ARRVAL_P(params), "options", sizeof("options")-1))) {
  if (Z_TYPE_P(tmp) == IS_ARRAY) {
   parse_context_options(context, tmp);
  } else {
   php_error_docref(((void*)0), E_WARNING, "Invalid stream/context parameter");
  }
 }

 return ret;
}

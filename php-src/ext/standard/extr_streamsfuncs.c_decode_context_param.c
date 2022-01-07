
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int zval ;
struct TYPE_9__ {int res; } ;
typedef TYPE_1__ php_stream_context ;
struct TYPE_10__ {int ctx; } ;
typedef TYPE_2__ php_stream ;


 TYPE_1__* PHP_STREAM_CONTEXT (TYPE_2__*) ;
 int php_file_le_pstream () ;
 int php_file_le_stream () ;
 int php_le_stream_context () ;
 TYPE_1__* php_stream_context_alloc () ;
 TYPE_2__* zend_fetch_resource2_ex (int *,int *,int ,int ) ;
 TYPE_1__* zend_fetch_resource_ex (int *,int *,int ) ;

__attribute__((used)) static php_stream_context *decode_context_param(zval *contextresource)
{
 php_stream_context *context = ((void*)0);

 context = zend_fetch_resource_ex(contextresource, ((void*)0), php_le_stream_context());
 if (context == ((void*)0)) {
  php_stream *stream;

  stream = zend_fetch_resource2_ex(contextresource, ((void*)0), php_file_le_stream(), php_file_le_pstream());

  if (stream) {
   context = PHP_STREAM_CONTEXT(stream);
   if (context == ((void*)0)) {




    context = php_stream_context_alloc();
    stream->ctx = context->res;
   }
  }
 }

 return context;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int Z; } ;
typedef TYPE_1__ php_zlib_context ;
struct TYPE_7__ {int op; } ;
typedef TYPE_2__ php_output_context ;


 int FAILURE ;
 int PHP_OUTPUT_HANDLER_CLEAN ;
 int PHP_OUTPUT_HANDLER_FINAL ;
 int PHP_OUTPUT_HANDLER_HOOK_GET_FLAGS ;
 int PHP_OUTPUT_HANDLER_HOOK_IMMUTABLE ;
 int PHP_OUTPUT_HANDLER_START ;
 int PHP_OUTPUT_HANDLER_STARTED ;


 scalar_t__ SG (int ) ;
 scalar_t__ SUCCESS ;
 int ZEND_STRL (char*) ;
 int ZLIBG (int ) ;
 int compression_coding ;
 int deflateEnd (int *) ;
 int headers_sent ;
 int output_compression ;
 scalar_t__ php_output_handler_hook (int ,int*) ;
 int php_zlib_output_encoding () ;
 scalar_t__ php_zlib_output_handler_ex (TYPE_1__*,TYPE_2__*) ;
 int sapi_add_header_ex (int ,int,int) ;

__attribute__((used)) static int php_zlib_output_handler(void **handler_context, php_output_context *output_context)
{
 php_zlib_context *ctx = *(php_zlib_context **) handler_context;

 if (!php_zlib_output_encoding()) {
  if ((output_context->op & PHP_OUTPUT_HANDLER_START)
  && (output_context->op != (PHP_OUTPUT_HANDLER_START|PHP_OUTPUT_HANDLER_CLEAN|PHP_OUTPUT_HANDLER_FINAL))
  ) {
   sapi_add_header_ex(ZEND_STRL("Vary: Accept-Encoding"), 1, 0);
  }
  return FAILURE;
 }

 if (SUCCESS != php_zlib_output_handler_ex(ctx, output_context)) {
  return FAILURE;
 }

 if (!(output_context->op & PHP_OUTPUT_HANDLER_CLEAN)) {
  int flags;

  if (SUCCESS == php_output_handler_hook(PHP_OUTPUT_HANDLER_HOOK_GET_FLAGS, &flags)) {

   if (!(flags & PHP_OUTPUT_HANDLER_STARTED)) {
    if (SG(headers_sent) || !ZLIBG(output_compression)) {
     deflateEnd(&ctx->Z);
     return FAILURE;
    }
    switch (ZLIBG(compression_coding)) {
     case 128:
      sapi_add_header_ex(ZEND_STRL("Content-Encoding: gzip"), 1, 1);
      break;
     case 129:
      sapi_add_header_ex(ZEND_STRL("Content-Encoding: deflate"), 1, 1);
      break;
     default:
      deflateEnd(&ctx->Z);
      return FAILURE;
    }
    sapi_add_header_ex(ZEND_STRL("Vary: Accept-Encoding"), 1, 0);
    php_output_handler_hook(PHP_OUTPUT_HANDLER_HOOK_IMMUTABLE, ((void*)0));
   }
  }
 }

 return SUCCESS;
}

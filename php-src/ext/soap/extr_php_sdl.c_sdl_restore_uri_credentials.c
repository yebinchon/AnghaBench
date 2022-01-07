
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * context; int old_header; } ;
typedef TYPE_1__ sdlCtx ;


 scalar_t__ IS_UNDEF ;
 int ZVAL_UNDEF (int *) ;
 scalar_t__ Z_TYPE (int ) ;
 int php_stream_context_set_option (int *,char*,char*,int *) ;
 int zval_ptr_dtor (int *) ;

void sdl_restore_uri_credentials(sdlCtx *ctx)
{
 if (Z_TYPE(ctx->old_header) != IS_UNDEF) {
     php_stream_context_set_option(ctx->context, "http", "header", &ctx->old_header);
     zval_ptr_dtor(&ctx->old_header);
  ZVAL_UNDEF(&ctx->old_header);
 }
 ctx->context = ((void*)0);
}

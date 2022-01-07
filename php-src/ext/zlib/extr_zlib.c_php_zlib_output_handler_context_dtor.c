
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* data; } ;
struct TYPE_5__ {TYPE_1__ buffer; } ;
typedef TYPE_2__ php_zlib_context ;


 int efree (TYPE_2__*) ;

__attribute__((used)) static void php_zlib_output_handler_context_dtor(void *opaq)
{
 php_zlib_context *ctx = (php_zlib_context *) opaq;

 if (ctx) {
  if (ctx->buffer.data) {
   efree(ctx->buffer.data);
  }
  efree(ctx);
 }
}

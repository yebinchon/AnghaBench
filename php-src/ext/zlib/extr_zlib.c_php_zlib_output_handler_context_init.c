
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int zfree; int zalloc; } ;
struct TYPE_5__ {TYPE_1__ Z; } ;
typedef TYPE_2__ php_zlib_context ;


 scalar_t__ ecalloc (int,int) ;
 int php_zlib_alloc ;
 int php_zlib_free ;

__attribute__((used)) static php_zlib_context *php_zlib_output_handler_context_init(void)
{
 php_zlib_context *ctx = (php_zlib_context *) ecalloc(1, sizeof(php_zlib_context));
 ctx->Z.zalloc = php_zlib_alloc;
 ctx->Z.zfree = php_zlib_free;
 return ctx;
}

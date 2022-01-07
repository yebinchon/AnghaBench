
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int startp; scalar_t__* p; } ;
typedef TYPE_1__ zend_gdbjit_ctx ;
typedef scalar_t__ uint8_t ;
typedef int uint32_t ;



__attribute__((used)) static uint32_t zend_gdbjit_strz(zend_gdbjit_ctx *ctx, const char *str)
{
 uint8_t *p = ctx->p;
 uint32_t ofs = (uint32_t)(p - ctx->startp);
 do {
  *p++ = (uint8_t)*str;
 } while (*str++);
 ctx->p = p;
 return ofs;
}

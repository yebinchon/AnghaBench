
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void** p; } ;
typedef TYPE_1__ zend_gdbjit_ctx ;
typedef void* uint8_t ;
typedef int uint32_t ;



__attribute__((used)) static void zend_gdbjit_uleb128(zend_gdbjit_ctx *ctx, uint32_t v)
{
 uint8_t *p = ctx->p;
 for (; v >= 0x80; v >>= 7)
  *p++ = (uint8_t)((v & 0x7f) | 0x80);
 *p++ = (uint8_t)v;
 ctx->p = p;
}

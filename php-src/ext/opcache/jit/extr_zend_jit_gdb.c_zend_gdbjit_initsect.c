
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int (* zend_gdbjit_initf ) (TYPE_3__*) ;
struct TYPE_8__ {TYPE_1__* sect; } ;
struct TYPE_9__ {scalar_t__ startp; scalar_t__ p; TYPE_2__ obj; } ;
typedef TYPE_3__ zend_gdbjit_ctx ;
struct TYPE_7__ {uintptr_t ofs; uintptr_t size; } ;



__attribute__((used)) static void zend_gdbjit_initsect(zend_gdbjit_ctx *ctx, int sect, zend_gdbjit_initf initf)
{
 ctx->startp = ctx->p;
 ctx->obj.sect[sect].ofs = (uintptr_t)((char *)ctx->p - (char *)&ctx->obj);
 initf(ctx);
 ctx->obj.sect[sect].size = (uintptr_t)(ctx->p - ctx->startp);
}

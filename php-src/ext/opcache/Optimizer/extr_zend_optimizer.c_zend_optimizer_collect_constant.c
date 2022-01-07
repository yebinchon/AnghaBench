
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zval ;
struct TYPE_3__ {scalar_t__ constants; int arena; } ;
typedef TYPE_1__ zend_optimizer_ctx ;
typedef int HashTable ;


 int ZVAL_COPY (int *,int *) ;
 int Z_STR_P (int *) ;
 scalar_t__ zend_arena_alloc (int *,int) ;
 int zend_hash_add (scalar_t__,int ,int *) ;
 int zend_hash_init (scalar_t__,int,int *,int ,int ) ;
 int zend_optimizer_zval_dtor_wrapper ;

void zend_optimizer_collect_constant(zend_optimizer_ctx *ctx, zval *name, zval* value)
{
 zval val;

 if (!ctx->constants) {
  ctx->constants = zend_arena_alloc(&ctx->arena, sizeof(HashTable));
  zend_hash_init(ctx->constants, 16, ((void*)0), zend_optimizer_zval_dtor_wrapper, 0);
 }
 ZVAL_COPY(&val, value);
 zend_hash_add(ctx->constants, Z_STR_P(name), &val);
}

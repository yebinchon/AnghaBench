
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct int_ctx {int mode; struct int_ctx* ptr; int free; int decrypt; int encrypt; int init; int iv_size; int key_size; int block_size; } ;
typedef struct int_ctx PX_Cipher ;


 int bf_block_size ;
 int bf_decrypt ;
 int bf_encrypt ;
 int bf_init ;
 int bf_iv_size ;
 int bf_key_size ;
 int intctx_free ;
 int memset (struct int_ctx*,int ,int) ;
 struct int_ctx* px_alloc (int) ;

__attribute__((used)) static PX_Cipher *
bf_load(int mode)
{
 PX_Cipher *c;
 struct int_ctx *cx;

 c = px_alloc(sizeof *c);
 memset(c, 0, sizeof *c);

 c->block_size = bf_block_size;
 c->key_size = bf_key_size;
 c->iv_size = bf_iv_size;
 c->init = bf_init;
 c->encrypt = bf_encrypt;
 c->decrypt = bf_decrypt;
 c->free = intctx_free;

 cx = px_alloc(sizeof *cx);
 memset(cx, 0, sizeof *cx);
 cx->mode = mode;
 c->ptr = cx;
 return c;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct int_ctx {int mode; struct int_ctx* ptr; int free; int decrypt; int encrypt; int init; int iv_size; int key_size; int block_size; } ;
typedef struct int_ctx PX_Cipher ;


 int intctx_free ;
 int memset (struct int_ctx*,int ,int) ;
 struct int_ctx* px_alloc (int) ;
 int rj_block_size ;
 int rj_decrypt ;
 int rj_encrypt ;
 int rj_init ;
 int rj_iv_size ;
 int rj_key_size ;

__attribute__((used)) static PX_Cipher *
rj_load(int mode)
{
 PX_Cipher *c;
 struct int_ctx *cx;

 c = px_alloc(sizeof *c);
 memset(c, 0, sizeof *c);

 c->block_size = rj_block_size;
 c->key_size = rj_key_size;
 c->iv_size = rj_iv_size;
 c->init = rj_init;
 c->encrypt = rj_encrypt;
 c->decrypt = rj_decrypt;
 c->free = intctx_free;

 cx = px_alloc(sizeof *cx);
 memset(cx, 0, sizeof *cx);
 cx->mode = mode;

 c->ptr = cx;
 return c;
}

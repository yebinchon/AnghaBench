
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rj; } ;
struct int_ctx {int keylen; int keybuf; TYPE_1__ ctx; } ;


 int aes_set_key (int *,int ,int,int) ;

__attribute__((used)) static int
rj_real_init(struct int_ctx *cx, int dir)
{
 aes_set_key(&cx->ctx.rj, cx->keybuf, cx->keylen * 8, dir);
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_4__ {int bf; } ;
struct int_ctx {TYPE_1__ ctx; } ;
struct TYPE_5__ {scalar_t__ ptr; } ;
typedef TYPE_2__ PX_Cipher ;


 int blowfish_setiv (int *,int const*) ;
 int blowfish_setkey (int *,int const*,unsigned int) ;

__attribute__((used)) static int
bf_init(PX_Cipher *c, const uint8 *key, unsigned klen, const uint8 *iv)
{
 struct int_ctx *cx = (struct int_ctx *) c->ptr;

 blowfish_setkey(&cx->ctx.bf, key, klen);
 if (iv)
  blowfish_setiv(&cx->ctx.bf, iv);

 return 0;
}

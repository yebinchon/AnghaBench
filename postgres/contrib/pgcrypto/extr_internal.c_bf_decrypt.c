
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_4__ {int bf; } ;
struct int_ctx {int mode; TYPE_1__ ctx; } ;
struct TYPE_5__ {scalar_t__ ptr; } ;
typedef TYPE_2__ PX_Cipher ;
typedef int BlowfishContext ;




 int PXE_NOTBLOCKSIZE ;
 int blowfish_decrypt_cbc (int *,unsigned int,int *) ;
 int blowfish_decrypt_ecb (int *,unsigned int,int *) ;
 int memcpy (int *,int const*,unsigned int) ;

__attribute__((used)) static int
bf_decrypt(PX_Cipher *c, const uint8 *data, unsigned dlen, uint8 *res)
{
 struct int_ctx *cx = (struct int_ctx *) c->ptr;
 BlowfishContext *bfctx = &cx->ctx.bf;

 if (dlen == 0)
  return 0;

 if (dlen & 7)
  return PXE_NOTBLOCKSIZE;

 memcpy(res, data, dlen);
 switch (cx->mode)
 {
  case 128:
   blowfish_decrypt_ecb(res, dlen, bfctx);
   break;
  case 129:
   blowfish_decrypt_cbc(res, dlen, bfctx);
   break;
 }
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8 ;
typedef int mix_data_t ;
struct TYPE_4__ {scalar_t__ resync; } ;
typedef TYPE_1__ PGP_CFB ;


 int cfb_process (TYPE_1__*,int const*,int,int *,int ) ;
 int mix_encrypt_normal ;
 int mix_encrypt_resync ;

int
pgp_cfb_encrypt(PGP_CFB *ctx, const uint8 *data, int len, uint8 *dst)
{
 mix_data_t mix = ctx->resync ? mix_encrypt_resync : mix_encrypt_normal;

 return cfb_process(ctx, data, len, dst, mix);
}

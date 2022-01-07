
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_3__ {int cipher_algo; } ;
typedef int PushFilter ;
typedef TYPE_1__ PGP_Context ;


 int PGP_MAX_BLOCK ;
 int PXE_NO_RANDOM ;
 int pg_strong_random (int *,int) ;
 int pgp_get_cipher_block_size (int ) ;
 int pushf_write (int *,int *,int) ;
 int px_memset (int *,int ,int) ;

__attribute__((used)) static int
write_prefix(PGP_Context *ctx, PushFilter *dst)
{
 uint8 prefix[PGP_MAX_BLOCK + 2];
 int res,
    bs;

 bs = pgp_get_cipher_block_size(ctx->cipher_algo);
 if (!pg_strong_random(prefix, bs))
  return PXE_NO_RANDOM;

 prefix[bs + 0] = prefix[bs - 2];
 prefix[bs + 1] = prefix[bs - 1];

 res = pushf_write(dst, prefix, bs + 2);
 px_memset(prefix, 0, bs + 2);
 return res < 0 ? res : 0;
}

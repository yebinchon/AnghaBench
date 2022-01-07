
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8 ;
typedef int tmpbuf ;
struct TYPE_2__ {int corrupt_prefix; int cipher_algo; } ;
typedef int PullFilter ;
typedef TYPE_1__ PGP_Context ;


 int PGP_MAX_BLOCK ;
 int PXE_BUG ;
 int PXE_PGP_CORRUPT_DATA ;
 int pgp_get_cipher_block_size (int ) ;
 int pullf_read_max (int *,int,scalar_t__**,scalar_t__*) ;
 int px_debug (char*) ;
 int px_memset (scalar_t__*,int ,int) ;

__attribute__((used)) static int
prefix_init(void **priv_p, void *arg, PullFilter *src)
{
 PGP_Context *ctx = arg;
 int len;
 int res;
 uint8 *buf;
 uint8 tmpbuf[PGP_MAX_BLOCK + 2];

 len = pgp_get_cipher_block_size(ctx->cipher_algo);
 if (len > sizeof(tmpbuf))
  return PXE_BUG;

 res = pullf_read_max(src, len + 2, &buf, tmpbuf);
 if (res < 0)
  return res;
 if (res != len + 2)
 {
  px_debug("prefix_init: short read");
  px_memset(tmpbuf, 0, sizeof(tmpbuf));
  return PXE_PGP_CORRUPT_DATA;
 }

 if (buf[len - 2] != buf[len] || buf[len - 1] != buf[len + 1])
 {
  px_debug("prefix_init: corrupt prefix");

  ctx->corrupt_prefix = 1;
 }
 px_memset(tmpbuf, 0, sizeof(tmpbuf));
 return 0;
}

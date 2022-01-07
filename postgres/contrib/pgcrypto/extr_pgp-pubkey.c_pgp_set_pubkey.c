
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_3__ {int * pub_key; } ;
typedef int PullFilter ;
typedef int PGP_PubKey ;
typedef TYPE_1__ PGP_Context ;
typedef int MBuf ;


 int internal_read_key (int *,int **,int const*,int,int) ;
 int pullf_create_mbuf_reader (int **,int *) ;
 int pullf_free (int *) ;

int
pgp_set_pubkey(PGP_Context *ctx, MBuf *keypkt,
      const uint8 *key, int key_len, int pubtype)
{
 int res;
 PullFilter *src;
 PGP_PubKey *pk = ((void*)0);

 res = pullf_create_mbuf_reader(&src, keypkt);
 if (res < 0)
  return res;

 res = internal_read_key(src, &pk, key, key_len, pubtype);
 pullf_free(src);

 if (res >= 0)
  ctx->pub_key = pk;

 return res < 0 ? res : 0;
}

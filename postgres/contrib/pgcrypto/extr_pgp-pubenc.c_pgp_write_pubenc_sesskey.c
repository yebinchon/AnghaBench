
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_9__ {TYPE_1__* pub_key; } ;
struct TYPE_8__ {int algo; int* key_id; } ;
typedef int PushFilter ;
typedef TYPE_1__ PGP_PubKey ;
typedef TYPE_2__ PGP_Context ;


 int PGP_PKT_PUBENCRYPTED_SESSKEY ;



 int PXE_BUG ;
 int encrypt_and_write_elgamal (TYPE_2__*,TYPE_1__*,int *) ;
 int encrypt_and_write_rsa (TYPE_2__*,TYPE_1__*,int *) ;
 int pgp_create_pkt_writer (int *,int ,int **) ;
 int pushf_flush (int *) ;
 int pushf_free (int *) ;
 int pushf_write (int *,int*,int) ;
 int px_debug (char*) ;

int
pgp_write_pubenc_sesskey(PGP_Context *ctx, PushFilter *dst)
{
 int res;
 PGP_PubKey *pk = ctx->pub_key;
 uint8 ver = 3;
 PushFilter *pkt = ((void*)0);
 uint8 algo;

 if (pk == ((void*)0))
 {
  px_debug("no pubkey?\n");
  return PXE_BUG;
 }

 algo = pk->algo;




 res = pgp_create_pkt_writer(dst, PGP_PKT_PUBENCRYPTED_SESSKEY, &pkt);
 if (res < 0)
  goto err;
 res = pushf_write(pkt, &ver, 1);
 if (res < 0)
  goto err;
 res = pushf_write(pkt, pk->key_id, 8);
 if (res < 0)
  goto err;
 res = pushf_write(pkt, &algo, 1);
 if (res < 0)
  goto err;

 switch (algo)
 {
  case 130:
   res = encrypt_and_write_elgamal(ctx, pk, pkt);
   break;
  case 129:
  case 128:
   res = encrypt_and_write_rsa(ctx, pk, pkt);
   break;
 }
 if (res < 0)
  goto err;




 res = pushf_flush(pkt);
err:
 if (pkt)
  pushf_free(pkt);

 return res;
}

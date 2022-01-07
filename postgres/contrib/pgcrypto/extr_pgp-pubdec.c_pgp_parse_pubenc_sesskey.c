
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_12__ {int sess_key_len; int sess_key; int cipher_algo; TYPE_1__* pub_key; } ;
struct TYPE_11__ {int bytes; int * data; } ;
struct TYPE_10__ {int key_id; } ;
typedef int PullFilter ;
typedef TYPE_1__ PGP_PubKey ;
typedef TYPE_2__ PGP_MPI ;
typedef TYPE_3__ PGP_Context ;


 int GETBYTE (int *,int) ;



 int PXE_BUG ;
 int PXE_PGP_CORRUPT_DATA ;
 int PXE_PGP_UNKNOWN_PUBALGO ;
 int PXE_PGP_WRONG_KEY ;
 int any_key ;
 int * check_eme_pkcs1_v15 (int *,int) ;
 int control_cksum (int *,int) ;
 int decrypt_elgamal (TYPE_1__*,int *,TYPE_2__**) ;
 int decrypt_rsa (TYPE_1__*,int *,TYPE_2__**) ;
 scalar_t__ memcmp (int *,int ,int) ;
 int memcpy (int ,int *,int) ;
 int pgp_expect_packet_end (int *) ;
 int pgp_mpi_free (TYPE_2__*) ;
 int pullf_read_fixed (int *,int,int *) ;
 int px_debug (char*,...) ;

int
pgp_parse_pubenc_sesskey(PGP_Context *ctx, PullFilter *pkt)
{
 int ver;
 int algo;
 int res;
 uint8 key_id[8];
 PGP_PubKey *pk;
 uint8 *msg;
 int msglen;
 PGP_MPI *m;

 pk = ctx->pub_key;
 if (pk == ((void*)0))
 {
  px_debug("no pubkey?");
  return PXE_BUG;
 }

 GETBYTE(pkt, ver);
 if (ver != 3)
 {
  px_debug("unknown pubenc_sesskey pkt ver=%d", ver);
  return PXE_PGP_CORRUPT_DATA;
 }




 res = pullf_read_fixed(pkt, 8, key_id);
 if (res < 0)
  return res;
 if (memcmp(key_id, any_key, 8) != 0
  && memcmp(key_id, pk->key_id, 8) != 0)
 {
  px_debug("key_id's does not match");
  return PXE_PGP_WRONG_KEY;
 }




 GETBYTE(pkt, algo);
 switch (algo)
 {
  case 130:
   res = decrypt_elgamal(pk, pkt, &m);
   break;
  case 129:
  case 128:
   res = decrypt_rsa(pk, pkt, &m);
   break;
  default:
   res = PXE_PGP_UNKNOWN_PUBALGO;
 }
 if (res < 0)
  return res;




 msg = check_eme_pkcs1_v15(m->data, m->bytes);
 if (msg == ((void*)0))
 {
  px_debug("check_eme_pkcs1_v15 failed");
  res = PXE_PGP_WRONG_KEY;
  goto out;
 }
 msglen = m->bytes - (msg - m->data);

 res = control_cksum(msg, msglen);
 if (res < 0)
  goto out;




 ctx->cipher_algo = *msg;
 ctx->sess_key_len = msglen - 3;
 memcpy(ctx->sess_key, msg + 1, ctx->sess_key_len);

out:
 pgp_mpi_free(m);
 if (res < 0)
  return res;
 return pgp_expect_packet_end(pkt);
}

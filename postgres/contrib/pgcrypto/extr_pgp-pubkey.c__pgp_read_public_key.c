
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int y; int g; int p; } ;
struct TYPE_11__ {int e; int n; } ;
struct TYPE_10__ {int y; int g; int q; int p; } ;
struct TYPE_13__ {TYPE_3__ elg; TYPE_2__ rsa; TYPE_1__ dsa; } ;
struct TYPE_14__ {int ver; int algo; int can_encrypt; TYPE_4__ pub; int time; } ;
typedef int PullFilter ;
typedef TYPE_5__ PGP_PubKey ;


 int GETBYTE (int *,int) ;





 int PXE_PGP_NOT_V4_KEYPKT ;
 int PXE_PGP_UNKNOWN_PUBALGO ;
 int calc_key_id (TYPE_5__*) ;
 int pgp_key_alloc (TYPE_5__**) ;
 int pgp_key_free (TYPE_5__*) ;
 int pgp_mpi_read (int *,int *) ;
 int pullf_read_fixed (int *,int,int ) ;
 int px_debug (char*,int const) ;

int
_pgp_read_public_key(PullFilter *pkt, PGP_PubKey **pk_p)
{
 int res;
 PGP_PubKey *pk;

 res = pgp_key_alloc(&pk);
 if (res < 0)
  return res;


 GETBYTE(pkt, pk->ver);
 if (pk->ver != 4)
 {
  res = PXE_PGP_NOT_V4_KEYPKT;
  goto out;
 }


 res = pullf_read_fixed(pkt, 4, pk->time);
 if (res < 0)
  goto out;


 GETBYTE(pkt, pk->algo);

 switch (pk->algo)
 {
  case 132:
   res = pgp_mpi_read(pkt, &pk->pub.dsa.p);
   if (res < 0)
    break;
   res = pgp_mpi_read(pkt, &pk->pub.dsa.q);
   if (res < 0)
    break;
   res = pgp_mpi_read(pkt, &pk->pub.dsa.g);
   if (res < 0)
    break;
   res = pgp_mpi_read(pkt, &pk->pub.dsa.y);
   if (res < 0)
    break;

   res = calc_key_id(pk);
   break;

  case 128:
  case 130:
  case 129:
   res = pgp_mpi_read(pkt, &pk->pub.rsa.n);
   if (res < 0)
    break;
   res = pgp_mpi_read(pkt, &pk->pub.rsa.e);
   if (res < 0)
    break;

   res = calc_key_id(pk);

   if (pk->algo != 128)
    pk->can_encrypt = 1;
   break;

  case 131:
   res = pgp_mpi_read(pkt, &pk->pub.elg.p);
   if (res < 0)
    break;
   res = pgp_mpi_read(pkt, &pk->pub.elg.g);
   if (res < 0)
    break;
   res = pgp_mpi_read(pkt, &pk->pub.elg.y);
   if (res < 0)
    break;

   res = calc_key_id(pk);

   pk->can_encrypt = 1;
   break;

  default:
   px_debug("unknown public algo: %d", pk->algo);
   res = PXE_PGP_UNKNOWN_PUBALGO;
 }

out:
 if (res < 0)
  pgp_key_free(pk);
 else
  *pk_p = pk;

 return res;
}

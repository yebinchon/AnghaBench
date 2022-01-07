
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* p; } ;
struct TYPE_9__ {TYPE_2__ elg; } ;
struct TYPE_10__ {TYPE_3__ pub; } ;
struct TYPE_7__ {scalar_t__ bytes; } ;
typedef int PushFilter ;
typedef TYPE_4__ PGP_PubKey ;
typedef int PGP_MPI ;
typedef int PGP_Context ;


 int create_secmsg (int *,int **,scalar_t__) ;
 int pgp_elgamal_encrypt (TYPE_4__*,int *,int **,int **) ;
 int pgp_mpi_free (int *) ;
 int pgp_mpi_write (int *,int *) ;

__attribute__((used)) static int
encrypt_and_write_elgamal(PGP_Context *ctx, PGP_PubKey *pk, PushFilter *pkt)
{
 int res;
 PGP_MPI *m = ((void*)0),
      *c1 = ((void*)0),
      *c2 = ((void*)0);


 res = create_secmsg(ctx, &m, pk->pub.elg.p->bytes - 1);
 if (res < 0)
  goto err;


 res = pgp_elgamal_encrypt(pk, m, &c1, &c2);
 if (res < 0)
  goto err;


 res = pgp_mpi_write(pkt, c1);
 if (res < 0)
  goto err;
 res = pgp_mpi_write(pkt, c2);

err:
 pgp_mpi_free(m);
 pgp_mpi_free(c1);
 pgp_mpi_free(c2);
 return res;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ algo; } ;
typedef int PullFilter ;
typedef TYPE_1__ PGP_PubKey ;
typedef int PGP_MPI ;


 scalar_t__ PGP_PUB_ELG_ENCRYPT ;
 int PXE_PGP_WRONG_KEY ;
 int pgp_elgamal_decrypt (TYPE_1__*,int *,int *,int **) ;
 int pgp_mpi_free (int *) ;
 int pgp_mpi_read (int *,int **) ;

__attribute__((used)) static int
decrypt_elgamal(PGP_PubKey *pk, PullFilter *pkt, PGP_MPI **m_p)
{
 int res;
 PGP_MPI *c1 = ((void*)0);
 PGP_MPI *c2 = ((void*)0);

 if (pk->algo != PGP_PUB_ELG_ENCRYPT)
  return PXE_PGP_WRONG_KEY;


 res = pgp_mpi_read(pkt, &c1);
 if (res < 0)
  goto out;
 res = pgp_mpi_read(pkt, &c2);
 if (res < 0)
  goto out;


 res = pgp_elgamal_decrypt(pk, c1, c2, m_p);

out:
 pgp_mpi_free(c1);
 pgp_mpi_free(c2);
 return res;
}

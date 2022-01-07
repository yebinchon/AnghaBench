
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ algo; } ;
typedef int PullFilter ;
typedef TYPE_1__ PGP_PubKey ;
typedef int PGP_MPI ;


 scalar_t__ PGP_PUB_RSA_ENCRYPT ;
 scalar_t__ PGP_PUB_RSA_ENCRYPT_SIGN ;
 int PXE_PGP_WRONG_KEY ;
 int pgp_mpi_free (int *) ;
 int pgp_mpi_read (int *,int **) ;
 int pgp_rsa_decrypt (TYPE_1__*,int *,int **) ;

__attribute__((used)) static int
decrypt_rsa(PGP_PubKey *pk, PullFilter *pkt, PGP_MPI **m_p)
{
 int res;
 PGP_MPI *c;

 if (pk->algo != PGP_PUB_RSA_ENCRYPT
  && pk->algo != PGP_PUB_RSA_ENCRYPT_SIGN)
  return PXE_PGP_WRONG_KEY;


 res = pgp_mpi_read(pkt, &c);
 if (res < 0)
  return res;


 res = pgp_rsa_decrypt(pk, c, m_p);

 pgp_mpi_free(c);
 return res;
}

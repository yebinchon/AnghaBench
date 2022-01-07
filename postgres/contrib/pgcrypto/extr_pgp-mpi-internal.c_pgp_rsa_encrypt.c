
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int mpz_t ;
struct TYPE_5__ {int * n; int * e; } ;
struct TYPE_6__ {TYPE_1__ rsa; } ;
struct TYPE_7__ {TYPE_2__ pub; } ;
typedef TYPE_3__ PGP_PubKey ;
typedef int PGP_MPI ;


 int PXE_PGP_MATH_FAILED ;
 int * bn_to_mpi (int *) ;
 int mp_clear_free (int *) ;
 int mp_int_exptmod (int *,int *,int *,int *) ;
 int * mp_new () ;
 int * mpi_to_bn (int *) ;

int
pgp_rsa_encrypt(PGP_PubKey *pk, PGP_MPI *_m, PGP_MPI **c_p)
{
 int res = PXE_PGP_MATH_FAILED;
 mpz_t *m = mpi_to_bn(_m);
 mpz_t *e = mpi_to_bn(pk->pub.rsa.e);
 mpz_t *n = mpi_to_bn(pk->pub.rsa.n);
 mpz_t *c = mp_new();

 if (!m || !e || !n || !c)
  goto err;




 mp_int_exptmod(m, e, n, c);

 *c_p = bn_to_mpi(c);
 if (*c_p)
  res = 0;
err:
 mp_clear_free(c);
 mp_clear_free(n);
 mp_clear_free(e);
 mp_clear_free(m);
 return res;
}

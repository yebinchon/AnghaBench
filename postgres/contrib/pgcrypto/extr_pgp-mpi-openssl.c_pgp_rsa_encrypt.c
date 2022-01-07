
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * n; int * e; } ;
struct TYPE_6__ {TYPE_1__ rsa; } ;
struct TYPE_7__ {TYPE_2__ pub; } ;
typedef TYPE_3__ PGP_PubKey ;
typedef int PGP_MPI ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_free (int *) ;
 int * BN_CTX_new () ;
 int BN_clear_free (int *) ;
 int BN_mod_exp (int *,int *,int *,int *,int *) ;
 int * BN_new () ;
 int PXE_PGP_MATH_FAILED ;
 int * bn_to_mpi (int *) ;
 int * mpi_to_bn (int *) ;

int
pgp_rsa_encrypt(PGP_PubKey *pk, PGP_MPI *_m, PGP_MPI **c_p)
{
 int res = PXE_PGP_MATH_FAILED;
 BIGNUM *m = mpi_to_bn(_m);
 BIGNUM *e = mpi_to_bn(pk->pub.rsa.e);
 BIGNUM *n = mpi_to_bn(pk->pub.rsa.n);
 BIGNUM *c = BN_new();
 BN_CTX *tmp = BN_CTX_new();

 if (!m || !e || !n || !c || !tmp)
  goto err;




 if (!BN_mod_exp(c, m, e, n, tmp))
  goto err;

 *c_p = bn_to_mpi(c);
 if (*c_p)
  res = 0;
err:
 if (tmp)
  BN_CTX_free(tmp);
 if (c)
  BN_clear_free(c);
 if (n)
  BN_clear_free(n);
 if (e)
  BN_clear_free(e);
 if (m)
  BN_clear_free(m);
 return res;
}

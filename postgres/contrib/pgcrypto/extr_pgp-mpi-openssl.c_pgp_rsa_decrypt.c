
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int * n; } ;
struct TYPE_10__ {TYPE_3__ rsa; } ;
struct TYPE_7__ {int * d; } ;
struct TYPE_8__ {TYPE_1__ rsa; } ;
struct TYPE_11__ {TYPE_4__ pub; TYPE_2__ sec; } ;
typedef TYPE_5__ PGP_PubKey ;
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
pgp_rsa_decrypt(PGP_PubKey *pk, PGP_MPI *_c, PGP_MPI **m_p)
{
 int res = PXE_PGP_MATH_FAILED;
 BIGNUM *c = mpi_to_bn(_c);
 BIGNUM *d = mpi_to_bn(pk->sec.rsa.d);
 BIGNUM *n = mpi_to_bn(pk->pub.rsa.n);
 BIGNUM *m = BN_new();
 BN_CTX *tmp = BN_CTX_new();

 if (!m || !d || !n || !c || !tmp)
  goto err;




 if (!BN_mod_exp(m, c, d, n, tmp))
  goto err;

 *m_p = bn_to_mpi(m);
 if (*m_p)
  res = 0;
err:
 if (tmp)
  BN_CTX_free(tmp);
 if (m)
  BN_clear_free(m);
 if (n)
  BN_clear_free(n);
 if (d)
  BN_clear_free(d);
 if (c)
  BN_clear_free(c);
 return res;
}

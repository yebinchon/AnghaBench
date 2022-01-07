
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * y; int * g; int * p; } ;
struct TYPE_6__ {TYPE_1__ elg; } ;
struct TYPE_7__ {TYPE_2__ pub; } ;
typedef TYPE_3__ PGP_PubKey ;
typedef int PGP_MPI ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_free (int *) ;
 int * BN_CTX_new () ;
 int BN_clear_free (int *) ;
 int BN_mod_exp (int *,int *,int *,int *,int *) ;
 int BN_mod_mul (int *,int *,int *,int *,int *) ;
 int * BN_new () ;
 int BN_num_bits (int *) ;
 int BN_rand (int *,int,int ,int ) ;
 int PXE_PGP_MATH_FAILED ;
 int * bn_to_mpi (int *) ;
 int decide_k_bits (int ) ;
 int * mpi_to_bn (int *) ;

int
pgp_elgamal_encrypt(PGP_PubKey *pk, PGP_MPI *_m,
     PGP_MPI **c1_p, PGP_MPI **c2_p)
{
 int res = PXE_PGP_MATH_FAILED;
 int k_bits;
 BIGNUM *m = mpi_to_bn(_m);
 BIGNUM *p = mpi_to_bn(pk->pub.elg.p);
 BIGNUM *g = mpi_to_bn(pk->pub.elg.g);
 BIGNUM *y = mpi_to_bn(pk->pub.elg.y);
 BIGNUM *k = BN_new();
 BIGNUM *yk = BN_new();
 BIGNUM *c1 = BN_new();
 BIGNUM *c2 = BN_new();
 BN_CTX *tmp = BN_CTX_new();

 if (!m || !p || !g || !y || !k || !yk || !c1 || !c2 || !tmp)
  goto err;




 k_bits = decide_k_bits(BN_num_bits(p));
 if (!BN_rand(k, k_bits, 0, 0))
  goto err;




 if (!BN_mod_exp(c1, g, k, p, tmp))
  goto err;
 if (!BN_mod_exp(yk, y, k, p, tmp))
  goto err;
 if (!BN_mod_mul(c2, m, yk, p, tmp))
  goto err;


 *c1_p = bn_to_mpi(c1);
 *c2_p = bn_to_mpi(c2);
 if (*c1_p && *c2_p)
  res = 0;
err:
 if (tmp)
  BN_CTX_free(tmp);
 if (c2)
  BN_clear_free(c2);
 if (c1)
  BN_clear_free(c1);
 if (yk)
  BN_clear_free(yk);
 if (k)
  BN_clear_free(k);
 if (y)
  BN_clear_free(y);
 if (g)
  BN_clear_free(g);
 if (p)
  BN_clear_free(p);
 if (m)
  BN_clear_free(m);
 return res;
}

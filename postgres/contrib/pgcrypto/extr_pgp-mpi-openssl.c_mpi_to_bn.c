
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ bits; int bytes; int data; } ;
typedef TYPE_1__ PGP_MPI ;
typedef int BIGNUM ;


 int * BN_bin2bn (int ,int ,int *) ;
 int BN_clear_free (int *) ;
 scalar_t__ BN_num_bits (int *) ;
 int px_debug (char*,scalar_t__,scalar_t__) ;

__attribute__((used)) static BIGNUM *
mpi_to_bn(PGP_MPI *n)
{
 BIGNUM *bn = BN_bin2bn(n->data, n->bytes, ((void*)0));

 if (!bn)
  return ((void*)0);
 if (BN_num_bits(bn) != n->bits)
 {
  px_debug("mpi_to_bn: bignum conversion failed: mpi=%d, bn=%d",
     n->bits, BN_num_bits(bn));
  BN_clear_free(bn);
  return ((void*)0);
 }
 return bn;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ bytes; int data; } ;
typedef TYPE_1__ PGP_MPI ;
typedef int BIGNUM ;


 int BN_bn2bin (int *,int ) ;
 int BN_num_bits (int *) ;
 scalar_t__ BN_num_bytes (int *) ;
 int pgp_mpi_alloc (int ,TYPE_1__**) ;
 int pgp_mpi_free (TYPE_1__*) ;
 int px_debug (char*,scalar_t__,scalar_t__) ;

__attribute__((used)) static PGP_MPI *
bn_to_mpi(BIGNUM *bn)
{
 int res;
 PGP_MPI *n;

 res = pgp_mpi_alloc(BN_num_bits(bn), &n);
 if (res < 0)
  return ((void*)0);

 if (BN_num_bytes(bn) != n->bytes)
 {
  px_debug("bn_to_mpi: bignum conversion failed: bn=%d, mpi=%d",
     BN_num_bytes(bn), n->bytes);
  pgp_mpi_free(n);
  return ((void*)0);
 }
 BN_bn2bin(bn, n->data);
 return n;
}

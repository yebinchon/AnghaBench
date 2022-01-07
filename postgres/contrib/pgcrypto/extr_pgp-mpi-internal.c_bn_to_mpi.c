
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int mpz_t ;
struct TYPE_5__ {int bytes; int data; } ;
typedef TYPE_1__ PGP_MPI ;


 int mp_int_count_bits (int *) ;
 int mp_int_to_unsigned (int *,int ,int) ;
 int pgp_mpi_alloc (int,TYPE_1__**) ;
 int pgp_mpi_free (TYPE_1__*) ;
 int px_debug (char*,int,int) ;

__attribute__((used)) static PGP_MPI *
bn_to_mpi(mpz_t *bn)
{
 int res;
 PGP_MPI *n;
 int bytes;

 res = pgp_mpi_alloc(mp_int_count_bits(bn), &n);
 if (res < 0)
  return ((void*)0);

 bytes = (mp_int_count_bits(bn) + 7) / 8;
 if (bytes != n->bytes)
 {
  px_debug("bn_to_mpi: bignum conversion failed: bn=%d, mpi=%d",
     bytes, n->bytes);
  pgp_mpi_free(n);
  return ((void*)0);
 }
 mp_int_to_unsigned(bn, n->data, n->bytes);
 return n;
}

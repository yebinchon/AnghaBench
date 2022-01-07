
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mpz_t ;
struct TYPE_3__ {scalar_t__ bits; int bytes; int data; } ;
typedef TYPE_1__ PGP_MPI ;


 int mp_clear_free (int *) ;
 scalar_t__ mp_int_count_bits (int *) ;
 int mp_int_read_unsigned (int *,int ,int ) ;
 int * mp_new () ;
 int px_debug (char*,scalar_t__,scalar_t__) ;

__attribute__((used)) static mpz_t *
mpi_to_bn(PGP_MPI *n)
{
 mpz_t *bn = mp_new();

 mp_int_read_unsigned(bn, n->data, n->bytes);

 if (!bn)
  return ((void*)0);
 if (mp_int_count_bits(bn) != n->bits)
 {
  px_debug("mpi_to_bn: bignum conversion failed: mpi=%d, bn=%d",
     n->bits, mp_int_count_bits(bn));
  mp_clear_free(bn);
  return ((void*)0);
 }
 return bn;
}

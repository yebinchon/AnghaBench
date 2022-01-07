
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8 ;
typedef scalar_t__ n ;
struct TYPE_4__ {int bits; int bytes; int * data; } ;
typedef TYPE_1__ PGP_MPI ;


 int PXE_PGP_CORRUPT_DATA ;
 TYPE_1__* px_alloc (int) ;
 int px_debug (char*,int) ;

int
pgp_mpi_alloc(int bits, PGP_MPI **mpi)
{
 PGP_MPI *n;
 int len = (bits + 7) / 8;

 if (bits < 0 || bits > 0xFFFF)
 {
  px_debug("pgp_mpi_alloc: unreasonable request: bits=%d", bits);
  return PXE_PGP_CORRUPT_DATA;
 }
 n = px_alloc(sizeof(*n) + len);
 n->bits = bits;
 n->bytes = len;
 n->data = (uint8 *) (n) + sizeof(*n);
 *mpi = n;
 return 0;
}

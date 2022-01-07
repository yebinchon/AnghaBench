
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_4__ {int bytes; int data; } ;
typedef TYPE_1__ PGP_MPI ;


 int memcpy (int ,int *,int ) ;
 int pgp_mpi_alloc (int,TYPE_1__**) ;

int
pgp_mpi_create(uint8 *data, int bits, PGP_MPI **mpi)
{
 int res;
 PGP_MPI *n;

 res = pgp_mpi_alloc(bits, &n);
 if (res < 0)
  return res;
 memcpy(n->data, data, n->bytes);
 *mpi = n;
 return 0;
}

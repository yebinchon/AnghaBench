
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef unsigned int uint8 ;
struct TYPE_5__ {int bytes; unsigned int* data; } ;
typedef int PullFilter ;
typedef TYPE_1__ PGP_MPI ;


 int pgp_mpi_alloc (int,TYPE_1__**) ;
 int pgp_mpi_free (TYPE_1__*) ;
 int pullf_read_fixed (int *,int,unsigned int*) ;

int
pgp_mpi_read(PullFilter *src, PGP_MPI **mpi)
{
 int res;
 uint8 hdr[2];
 int bits;
 PGP_MPI *n;

 res = pullf_read_fixed(src, 2, hdr);
 if (res < 0)
  return res;
 bits = ((unsigned) hdr[0] << 8) + hdr[1];

 res = pgp_mpi_alloc(bits, &n);
 if (res < 0)
  return res;

 res = pullf_read_fixed(src, n->bytes, n->data);
 if (res < 0)
  pgp_mpi_free(n);
 else
  *mpi = n;
 return res;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bits; int bytes; scalar_t__* data; } ;
typedef TYPE_1__ PGP_MPI ;



unsigned
pgp_mpi_cksum(unsigned cksum, PGP_MPI *n)
{
 int i;

 cksum += n->bits >> 8;
 cksum += n->bits & 0xFF;
 for (i = 0; i < n->bytes; i++)
  cksum += n->data[i];

 return cksum & 0xFFFF;
}

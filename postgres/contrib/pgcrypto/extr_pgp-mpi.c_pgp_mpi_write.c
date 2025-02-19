
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_3__ {int bits; int* data; int bytes; } ;
typedef int PushFilter ;
typedef TYPE_1__ PGP_MPI ;


 int pushf_write (int *,int*,int) ;

int
pgp_mpi_write(PushFilter *dst, PGP_MPI *n)
{
 int res;
 uint8 buf[2];

 buf[0] = n->bits >> 8;
 buf[1] = n->bits & 0xFF;
 res = pushf_write(dst, buf, 2);
 if (res >= 0)
  res = pushf_write(dst, n->data, n->bytes);
 return res;
}

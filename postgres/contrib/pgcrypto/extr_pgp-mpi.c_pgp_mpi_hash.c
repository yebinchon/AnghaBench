
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_3__ {int bits; int* data; int bytes; } ;
typedef int PX_MD ;
typedef TYPE_1__ PGP_MPI ;


 int px_md_update (int *,int*,int) ;

int
pgp_mpi_hash(PX_MD *md, PGP_MPI *n)
{
 uint8 buf[2];

 buf[0] = n->bits >> 8;
 buf[1] = n->bits & 0xFF;
 px_md_update(md, buf, 2);
 px_md_update(md, n->data, n->bytes);

 return 0;
}

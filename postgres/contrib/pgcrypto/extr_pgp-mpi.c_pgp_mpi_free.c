
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ bytes; } ;
typedef TYPE_1__ PGP_MPI ;


 int px_free (TYPE_1__*) ;
 int px_memset (TYPE_1__*,int ,scalar_t__) ;

int
pgp_mpi_free(PGP_MPI *mpi)
{
 if (mpi == ((void*)0))
  return 0;
 px_memset(mpi, 0, sizeof(*mpi) + mpi->bytes);
 px_free(mpi);
 return 0;
}

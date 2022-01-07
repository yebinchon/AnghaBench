
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_9__ ;
typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_19__ {int x; } ;
struct TYPE_16__ {int u; int q; int p; int d; } ;
struct TYPE_14__ {int x; } ;
struct TYPE_20__ {TYPE_7__ dsa; TYPE_4__ rsa; TYPE_2__ elg; } ;
struct TYPE_17__ {int y; int g; int q; int p; } ;
struct TYPE_15__ {int e; int n; } ;
struct TYPE_13__ {int y; int g; int p; } ;
struct TYPE_18__ {TYPE_5__ dsa; TYPE_3__ rsa; TYPE_1__ elg; } ;
struct TYPE_21__ {int algo; TYPE_8__ sec; TYPE_6__ pub; } ;
typedef TYPE_9__ PGP_PubKey ;







 int pgp_mpi_free (int ) ;
 int px_free (TYPE_9__*) ;
 int px_memset (TYPE_9__*,int ,int) ;

void
pgp_key_free(PGP_PubKey *pk)
{
 if (pk == ((void*)0))
  return;

 switch (pk->algo)
 {
  case 131:
   pgp_mpi_free(pk->pub.elg.p);
   pgp_mpi_free(pk->pub.elg.g);
   pgp_mpi_free(pk->pub.elg.y);
   pgp_mpi_free(pk->sec.elg.x);
   break;
  case 128:
  case 130:
  case 129:
   pgp_mpi_free(pk->pub.rsa.n);
   pgp_mpi_free(pk->pub.rsa.e);
   pgp_mpi_free(pk->sec.rsa.d);
   pgp_mpi_free(pk->sec.rsa.p);
   pgp_mpi_free(pk->sec.rsa.q);
   pgp_mpi_free(pk->sec.rsa.u);
   break;
  case 132:
   pgp_mpi_free(pk->pub.dsa.p);
   pgp_mpi_free(pk->pub.dsa.q);
   pgp_mpi_free(pk->pub.dsa.g);
   pgp_mpi_free(pk->pub.dsa.y);
   pgp_mpi_free(pk->sec.dsa.x);
   break;
 }
 px_memset(pk, 0, sizeof(*pk));
 px_free(pk);
}

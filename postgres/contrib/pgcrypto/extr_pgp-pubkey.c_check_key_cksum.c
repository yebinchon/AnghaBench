
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef unsigned int uint8 ;
struct TYPE_9__ {int x; } ;
struct TYPE_8__ {int u; int q; int p; int d; } ;
struct TYPE_7__ {int x; } ;
struct TYPE_10__ {TYPE_3__ dsa; TYPE_2__ rsa; TYPE_1__ elg; } ;
struct TYPE_11__ {int algo; TYPE_4__ sec; } ;
typedef int PullFilter ;
typedef TYPE_5__ PGP_PubKey ;







 int PXE_PGP_KEYPKT_CORRUPT ;
 unsigned int pgp_mpi_cksum (unsigned int,int ) ;
 int pullf_read_fixed (int *,int,unsigned int*) ;
 int px_debug (char*) ;

__attribute__((used)) static int
check_key_cksum(PullFilter *src, PGP_PubKey *pk)
{
 int res;
 unsigned got_cksum,
    my_cksum = 0;
 uint8 buf[2];

 res = pullf_read_fixed(src, 2, buf);
 if (res < 0)
  return res;

 got_cksum = ((unsigned) buf[0] << 8) + buf[1];
 switch (pk->algo)
 {
  case 131:
   my_cksum = pgp_mpi_cksum(0, pk->sec.elg.x);
   break;
  case 128:
  case 130:
  case 129:
   my_cksum = pgp_mpi_cksum(0, pk->sec.rsa.d);
   my_cksum = pgp_mpi_cksum(my_cksum, pk->sec.rsa.p);
   my_cksum = pgp_mpi_cksum(my_cksum, pk->sec.rsa.q);
   my_cksum = pgp_mpi_cksum(my_cksum, pk->sec.rsa.u);
   break;
  case 132:
   my_cksum = pgp_mpi_cksum(0, pk->sec.dsa.x);
   break;
 }
 if (my_cksum != got_cksum)
 {
  px_debug("key cksum check failed");
  return PXE_PGP_KEYPKT_CORRUPT;
 }
 return 0;
}

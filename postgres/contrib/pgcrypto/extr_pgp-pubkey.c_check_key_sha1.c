
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_9__ {int x; } ;
struct TYPE_8__ {int u; int q; int p; int d; } ;
struct TYPE_7__ {int x; } ;
struct TYPE_10__ {TYPE_3__ dsa; TYPE_2__ rsa; TYPE_1__ elg; } ;
struct TYPE_11__ {int algo; TYPE_4__ sec; } ;
typedef int PullFilter ;
typedef int PX_MD ;
typedef TYPE_5__ PGP_PubKey ;


 int PGP_DIGEST_SHA1 ;





 int PXE_PGP_KEYPKT_CORRUPT ;
 scalar_t__ memcmp (int *,int *,int) ;
 int pgp_load_digest (int ,int **) ;
 int pgp_mpi_hash (int *,int ) ;
 int pullf_read_fixed (int *,int,int *) ;
 int px_debug (char*) ;
 int px_md_finish (int *,int *) ;
 int px_md_free (int *) ;
 int px_memset (int *,int ,int) ;

__attribute__((used)) static int
check_key_sha1(PullFilter *src, PGP_PubKey *pk)
{
 int res;
 uint8 got_sha1[20];
 uint8 my_sha1[20];
 PX_MD *md;

 res = pullf_read_fixed(src, 20, got_sha1);
 if (res < 0)
  return res;

 res = pgp_load_digest(PGP_DIGEST_SHA1, &md);
 if (res < 0)
  goto err;
 switch (pk->algo)
 {
  case 131:
   pgp_mpi_hash(md, pk->sec.elg.x);
   break;
  case 128:
  case 130:
  case 129:
   pgp_mpi_hash(md, pk->sec.rsa.d);
   pgp_mpi_hash(md, pk->sec.rsa.p);
   pgp_mpi_hash(md, pk->sec.rsa.q);
   pgp_mpi_hash(md, pk->sec.rsa.u);
   break;
  case 132:
   pgp_mpi_hash(md, pk->sec.dsa.x);
   break;
 }
 px_md_finish(md, my_sha1);
 px_md_free(md);

 if (memcmp(my_sha1, got_sha1, 20) != 0)
 {
  px_debug("key sha1 check failed");
  res = PXE_PGP_KEYPKT_CORRUPT;
 }
err:
 px_memset(got_sha1, 0, 20);
 px_memset(my_sha1, 0, 20);
 return res;
}

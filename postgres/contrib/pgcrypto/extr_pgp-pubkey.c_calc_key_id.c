
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_13__ {int bytes; } ;
struct TYPE_10__ {TYPE_6__* y; TYPE_6__* g; TYPE_6__* q; TYPE_6__* p; } ;
struct TYPE_9__ {TYPE_6__* e; TYPE_6__* n; } ;
struct TYPE_8__ {TYPE_6__* y; TYPE_6__* g; TYPE_6__* p; } ;
struct TYPE_11__ {TYPE_3__ dsa; TYPE_2__ rsa; TYPE_1__ elg; } ;
struct TYPE_12__ {int algo; int ver; int* time; int key_id; TYPE_4__ pub; } ;
typedef int PX_MD ;
typedef TYPE_5__ PGP_PubKey ;


 int PGP_DIGEST_SHA1 ;





 int memcpy (int ,int*,int) ;
 int pgp_load_digest (int ,int **) ;
 int pgp_mpi_hash (int *,TYPE_6__*) ;
 int px_md_finish (int *,int*) ;
 int px_md_free (int *) ;
 int px_md_update (int *,int*,int) ;
 int px_memset (int*,int ,int) ;

__attribute__((used)) static int
calc_key_id(PGP_PubKey *pk)
{
 int res;
 PX_MD *md;
 int len;
 uint8 hdr[3];
 uint8 hash[20];

 res = pgp_load_digest(PGP_DIGEST_SHA1, &md);
 if (res < 0)
  return res;

 len = 1 + 4 + 1;
 switch (pk->algo)
 {
  case 131:
   len += 2 + pk->pub.elg.p->bytes;
   len += 2 + pk->pub.elg.g->bytes;
   len += 2 + pk->pub.elg.y->bytes;
   break;
  case 128:
  case 130:
  case 129:
   len += 2 + pk->pub.rsa.n->bytes;
   len += 2 + pk->pub.rsa.e->bytes;
   break;
  case 132:
   len += 2 + pk->pub.dsa.p->bytes;
   len += 2 + pk->pub.dsa.q->bytes;
   len += 2 + pk->pub.dsa.g->bytes;
   len += 2 + pk->pub.dsa.y->bytes;
   break;
 }

 hdr[0] = 0x99;
 hdr[1] = len >> 8;
 hdr[2] = len & 0xFF;
 px_md_update(md, hdr, 3);

 px_md_update(md, &pk->ver, 1);
 px_md_update(md, pk->time, 4);
 px_md_update(md, &pk->algo, 1);

 switch (pk->algo)
 {
  case 131:
   pgp_mpi_hash(md, pk->pub.elg.p);
   pgp_mpi_hash(md, pk->pub.elg.g);
   pgp_mpi_hash(md, pk->pub.elg.y);
   break;
  case 128:
  case 130:
  case 129:
   pgp_mpi_hash(md, pk->pub.rsa.n);
   pgp_mpi_hash(md, pk->pub.rsa.e);
   break;
  case 132:
   pgp_mpi_hash(md, pk->pub.dsa.p);
   pgp_mpi_hash(md, pk->pub.dsa.q);
   pgp_mpi_hash(md, pk->pub.dsa.g);
   pgp_mpi_hash(md, pk->pub.dsa.y);
   break;
 }

 px_md_finish(md, hash);
 px_md_free(md);

 memcpy(pk->key_id, hash + 12, 8);
 px_memset(hash, 0, 20);

 return 0;
}

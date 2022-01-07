
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_4__ {int algo; int key_id; } ;
typedef int PullFilter ;
typedef TYPE_1__ PGP_PubKey ;





 int _pgp_read_public_key (int *,TYPE_1__**) ;
 int memcpy (int *,int ,int) ;
 int pgp_key_free (TYPE_1__*) ;
 int pgp_skip_packet (int *) ;

__attribute__((used)) static int
read_pubkey_keyid(PullFilter *pkt, uint8 *keyid_buf)
{
 int res;
 PGP_PubKey *pk = ((void*)0);

 res = _pgp_read_public_key(pkt, &pk);
 if (res < 0)
  goto err;


 res = pgp_skip_packet(pkt);
 if (res < 0)
  goto err;


 switch (pk->algo)
 {
  case 130:
  case 129:
  case 128:
   memcpy(keyid_buf, pk->key_id, 8);
   res = 1;
   break;
  default:
   res = 0;
 }

err:
 pgp_key_free(pk);
 return res;
}

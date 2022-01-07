
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_6__ {scalar_t__ key_len; int mode; int digest_algo; } ;
typedef int PX_MD ;
typedef TYPE_1__ PGP_S2K ;


 int PXE_PGP_BAD_S2K_MODE ;
 int PXE_PGP_UNSUPPORTED_CIPHER ;
 int calc_s2k_iter_salted (TYPE_1__*,int *,int const*,int) ;
 int calc_s2k_salted (TYPE_1__*,int *,int const*,int) ;
 int calc_s2k_simple (TYPE_1__*,int *,int const*,int) ;
 scalar_t__ pgp_get_cipher_key_size (int) ;
 int pgp_load_digest (int ,int **) ;
 int px_md_free (int *) ;

int
pgp_s2k_process(PGP_S2K *s2k, int cipher, const uint8 *key, int key_len)
{
 int res;
 PX_MD *md;

 s2k->key_len = pgp_get_cipher_key_size(cipher);
 if (s2k->key_len <= 0)
  return PXE_PGP_UNSUPPORTED_CIPHER;

 res = pgp_load_digest(s2k->digest_algo, &md);
 if (res < 0)
  return res;

 switch (s2k->mode)
 {
  case 0:
   res = calc_s2k_simple(s2k, md, key, key_len);
   break;
  case 1:
   res = calc_s2k_salted(s2k, md, key, key_len);
   break;
  case 3:
   res = calc_s2k_iter_salted(s2k, md, key, key_len);
   break;
  default:
   res = PXE_PGP_BAD_S2K_MODE;
 }
 px_md_free(md);
 return res;
}

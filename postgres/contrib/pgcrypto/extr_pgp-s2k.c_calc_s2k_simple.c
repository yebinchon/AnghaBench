
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int const uint8 ;
typedef int buf ;
struct TYPE_3__ {unsigned int key_len; int const* key; } ;
typedef int PX_MD ;
typedef TYPE_1__ PGP_S2K ;


 int PGP_MAX_DIGEST ;
 int memcpy (int const*,int const*,unsigned int) ;
 int memset (int const*,int ,unsigned int) ;
 int px_md_finish (int *,int const*) ;
 int px_md_reset (int *) ;
 unsigned int px_md_result_size (int *) ;
 int px_md_update (int *,int const*,unsigned int) ;
 int px_memset (int const*,int ,int) ;

__attribute__((used)) static int
calc_s2k_simple(PGP_S2K *s2k, PX_MD *md, const uint8 *key,
    unsigned key_len)
{
 unsigned md_rlen;
 uint8 buf[PGP_MAX_DIGEST];
 unsigned preload;
 unsigned remain;
 uint8 *dst = s2k->key;

 md_rlen = px_md_result_size(md);

 remain = s2k->key_len;
 preload = 0;
 while (remain > 0)
 {
  px_md_reset(md);

  if (preload)
  {
   memset(buf, 0, preload);
   px_md_update(md, buf, preload);
  }
  preload++;

  px_md_update(md, key, key_len);
  px_md_finish(md, buf);

  if (remain > md_rlen)
  {
   memcpy(dst, buf, md_rlen);
   dst += md_rlen;
   remain -= md_rlen;
  }
  else
  {
   memcpy(dst, buf, remain);
   remain = 0;
  }
 }
 px_memset(buf, 0, sizeof(buf));
 return 0;
}

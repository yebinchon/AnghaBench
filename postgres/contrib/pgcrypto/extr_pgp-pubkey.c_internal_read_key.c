
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_6__ {scalar_t__ can_encrypt; } ;
typedef int PullFilter ;
typedef TYPE_1__ PGP_PubKey ;
 int PXE_PGP_EXPECT_PUBLIC_KEY ;
 int PXE_PGP_EXPECT_SECRET_KEY ;
 int PXE_PGP_MULTIPLE_KEYS ;
 int PXE_PGP_MULTIPLE_SUBKEYS ;
 int PXE_PGP_NO_USABLE_KEY ;
 int PXE_PGP_UNEXPECTED_PKT ;
 int _pgp_read_public_key (int *,TYPE_1__**) ;
 int pgp_create_pkt_reader (int **,int *,int,int,int *) ;
 int pgp_key_free (TYPE_1__*) ;
 int pgp_parse_pkt_hdr (int *,int*,int*,int ) ;
 int pgp_skip_packet (int *) ;
 int process_secret_key (int *,TYPE_1__**,int const*,int) ;
 int pullf_free (int *) ;
 int px_debug (char*,int) ;

__attribute__((used)) static int
internal_read_key(PullFilter *src, PGP_PubKey **pk_p,
      const uint8 *psw, int psw_len, int pubtype)
{
 PullFilter *pkt = ((void*)0);
 int res;
 uint8 tag;
 int len;
 PGP_PubKey *enc_key = ((void*)0);
 PGP_PubKey *pk = ((void*)0);
 int got_main_key = 0;






 while (1)
 {
  res = pgp_parse_pkt_hdr(src, &tag, &len, 0);
  if (res <= 0)
   break;
  res = pgp_create_pkt_reader(&pkt, src, len, res, ((void*)0));
  if (res < 0)
   break;

  switch (tag)
  {
   case 135:
   case 133:
    if (got_main_key)
    {
     res = PXE_PGP_MULTIPLE_KEYS;
     break;
    }
    got_main_key = 1;
    res = pgp_skip_packet(pkt);
    break;

   case 134:
    if (pubtype != 0)
     res = PXE_PGP_EXPECT_SECRET_KEY;
    else
     res = _pgp_read_public_key(pkt, &pk);
    break;

   case 132:
    if (pubtype != 1)
     res = PXE_PGP_EXPECT_PUBLIC_KEY;
    else
     res = process_secret_key(pkt, &pk, psw, psw_len);
    break;

   case 131:
   case 137:
   case 130:
   case 128:
   case 129:
   case 136:
    res = pgp_skip_packet(pkt);
    break;
   default:
    px_debug("unknown/unexpected packet: %d", tag);
    res = PXE_PGP_UNEXPECTED_PKT;
  }
  pullf_free(pkt);
  pkt = ((void*)0);

  if (pk != ((void*)0))
  {
   if (res >= 0 && pk->can_encrypt)
   {
    if (enc_key == ((void*)0))
    {
     enc_key = pk;
     pk = ((void*)0);
    }
    else
     res = PXE_PGP_MULTIPLE_SUBKEYS;
   }

   if (pk)
    pgp_key_free(pk);
   pk = ((void*)0);
  }

  if (res < 0)
   break;
 }

 if (pkt)
  pullf_free(pkt);

 if (res < 0)
 {
  if (enc_key)
   pgp_key_free(enc_key);
  return res;
 }

 if (!enc_key)
  res = PXE_PGP_NO_USABLE_KEY;
 else
  *pk_p = enc_key;
 return res;
}

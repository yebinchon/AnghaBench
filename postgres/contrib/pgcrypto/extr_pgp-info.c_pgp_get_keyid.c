
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int PullFilter ;
typedef int MBuf ;
 int PXE_PGP_CORRUPT_DATA ;
 int PXE_PGP_MULTIPLE_KEYS ;
 int PXE_PGP_NO_USABLE_KEY ;
 int any_key ;
 scalar_t__ memcmp (int*,int ,int) ;
 int memcpy (char*,char*,int) ;
 int pgp_create_pkt_reader (int **,int *,int,int,int *) ;
 int pgp_parse_pkt_hdr (int *,int*,int*,int ) ;
 int pgp_skip_packet (int *) ;
 int print_key (int*,char*) ;
 int pullf_create_mbuf_reader (int **,int *) ;
 int pullf_free (int *) ;
 int read_pubenc_keyid (int *,int*) ;
 int read_pubkey_keyid (int *,int*) ;

int
pgp_get_keyid(MBuf *pgp_data, char *dst)
{
 int res;
 PullFilter *src;
 PullFilter *pkt = ((void*)0);
 int len;
 uint8 tag;
 int got_pub_key = 0,
    got_symenc_key = 0,
    got_pubenc_key = 0;
 int got_data = 0;
 uint8 keyid_buf[8];
 int got_main_key = 0;


 res = pullf_create_mbuf_reader(&src, pgp_data);
 if (res < 0)
  return res;

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
   case 136:
   case 138:

    if (!got_main_key)
    {
     got_main_key = 1;
     res = pgp_skip_packet(pkt);
    }
    else
     res = PXE_PGP_MULTIPLE_KEYS;
    break;
   case 135:
   case 137:
    res = read_pubkey_keyid(pkt, keyid_buf);
    if (res < 0)
     break;
    if (res > 0)
     got_pub_key++;
    break;
   case 139:
    got_pubenc_key++;
    res = read_pubenc_keyid(pkt, keyid_buf);
    break;
   case 133:
   case 132:

    got_data = 1;
    break;
   case 131:
    got_symenc_key++;

   case 134:
   case 141:
   case 130:
   case 128:
   case 129:
   case 140:
    res = pgp_skip_packet(pkt);
    break;
   default:
    res = PXE_PGP_CORRUPT_DATA;
  }

  if (pkt)
   pullf_free(pkt);
  pkt = ((void*)0);

  if (res < 0 || got_data)
   break;
 }

 pullf_free(src);
 if (pkt)
  pullf_free(pkt);

 if (res < 0)
  return res;


 if (got_pub_key && got_pubenc_key)
  res = PXE_PGP_CORRUPT_DATA;

 if (got_pub_key > 1)
  res = PXE_PGP_MULTIPLE_KEYS;

 if (got_pubenc_key > 1)
  res = PXE_PGP_MULTIPLE_KEYS;




 if (res >= 0)
 {
  if (got_pubenc_key || got_pub_key)
  {
   if (memcmp(keyid_buf, any_key, 8) == 0)
   {
    memcpy(dst, "ANYKEY", 7);
    res = 6;
   }
   else
    res = print_key(keyid_buf, dst);
  }
  else if (got_symenc_key)
  {
   memcpy(dst, "SYMKEY", 7);
   res = 6;
  }
  else
   res = PXE_PGP_NO_USABLE_KEY;
 }

 return res;
}

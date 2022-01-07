
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8 ;
typedef scalar_t__ uint32 ;
typedef int uint16 ;
struct TYPE_10__ {int * p; int * end; } ;
typedef TYPE_1__* STREAM ;
typedef int RD_BOOL ;
typedef int * PCCERT_CONTEXT ;
typedef int BYTE ;


 int DEBUG_RDP5 (char*) ;
 int False ;
 int SEC_EXPONENT_SIZE ;
 int SEC_MAX_MODULUS_SIZE ;
 int SEC_MODULUS_SIZE ;
 scalar_t__ SEC_RANDOM_SIZE ;


 int True ;
 int error (char*,...) ;
 int g_server_public_key_len ;
 int in_uint16_le (TYPE_1__*,int) ;
 int in_uint32_le (TYPE_1__*,scalar_t__) ;
 int in_uint8p (TYPE_1__*,int *,scalar_t__) ;
 int in_uint8s (TYPE_1__*,int) ;
 int rdssl_cert_free (int *) ;
 int rdssl_cert_print_fp (int ,int *) ;
 int * rdssl_cert_read (int *,scalar_t__) ;
 int * rdssl_cert_to_rkey (int *,int*) ;
 int rdssl_certs_ok (int *,int *) ;
 int rdssl_rkey_free (int *) ;
 scalar_t__ rdssl_rkey_get_exp_mod (int *,int *,int ,int *,int) ;
 int s_check_end (TYPE_1__*) ;
 int sec_parse_public_key (TYPE_1__*,int *,int *) ;
 int sec_parse_public_sig (TYPE_1__*,int,int *,int *) ;
 int stdout ;
 int unimpl (char*,int) ;

__attribute__((used)) static RD_BOOL
sec_parse_crypt_info(STREAM s, uint32 * rc4_key_size,
       uint8 ** server_random, uint8 * modulus, uint8 * exponent)
{
 uint32 crypt_level, random_len, rsa_info_len;
 uint32 cacert_len, cert_len, flags;
    PCCERT_CONTEXT cacert, server_cert;
 BYTE *server_public_key;
 uint16 tag, length;
 uint8 *next_tag, *end;

 in_uint32_le(s, *rc4_key_size);
 in_uint32_le(s, crypt_level);
 if (crypt_level == 0)
 {

  return False;
 }

 in_uint32_le(s, random_len);
 in_uint32_le(s, rsa_info_len);

 if (random_len != SEC_RANDOM_SIZE)
 {
  error("random len %d, expected %d\n", random_len, SEC_RANDOM_SIZE);
  return False;
 }

 in_uint8p(s, *server_random, random_len);


 end = s->p + rsa_info_len;
 if (end > s->end)
  return False;

 in_uint32_le(s, flags);
 if (flags & 1)
 {
  DEBUG_RDP5(("We're going for the RDP4-style encryption\n"));
  in_uint8s(s, 8);

  while (s->p < end)
  {
   in_uint16_le(s, tag);
   in_uint16_le(s, length);

   next_tag = s->p + length;

   switch (tag)
   {
    case 128:
     if (!sec_parse_public_key(s, modulus, exponent))
      return False;
     DEBUG_RDP5(("Got Public key, RDP4-style\n"));

     break;

    case 129:
     if (!sec_parse_public_sig(s, length, modulus, exponent))
      return False;
     break;

    default:
     unimpl("crypt tag 0x%x\n", tag);
   }

   s->p = next_tag;
  }
 }
 else
 {
  uint32 certcount;

  DEBUG_RDP5(("We're going for the RDP5-style encryption\n"));
  in_uint32_le(s, certcount);
  if (certcount < 2)
  {
   error("Server didn't send enough X509 certificates\n");
   return False;
  }
  for (; certcount > 2; certcount--)
  {
   uint32 ignorelen;
            PCCERT_CONTEXT ignorecert;

   DEBUG_RDP5(("Ignored certs left: %d\n", certcount));
   in_uint32_le(s, ignorelen);
   DEBUG_RDP5(("Ignored Certificate length is %d\n", ignorelen));
   ignorecert = rdssl_cert_read(s->p, ignorelen);
   in_uint8s(s, ignorelen);
   if (ignorecert == ((void*)0))
   {
    DEBUG_RDP5(("got a bad cert: this will probably screw up the rest of the communication\n"));
   }





  }
  in_uint32_le(s, cacert_len);
  DEBUG_RDP5(("CA Certificate length is %d\n", cacert_len));
  cacert = rdssl_cert_read(s->p, cacert_len);
  in_uint8s(s, cacert_len);
  if (((void*)0) == cacert)
  {
   error("Couldn't load CA Certificate from server\n");
   return False;
  }
  in_uint32_le(s, cert_len);
  DEBUG_RDP5(("Certificate length is %d\n", cert_len));
  server_cert = rdssl_cert_read(s->p, cert_len);
  in_uint8s(s, cert_len);
  if (((void*)0) == server_cert)
  {
   rdssl_cert_free(cacert);
   error("Couldn't load Certificate from server\n");
   return False;
  }
  if (!rdssl_certs_ok(server_cert, cacert))
  {
   rdssl_cert_free(server_cert);
   rdssl_cert_free(cacert);
   error("Security error CA Certificate invalid\n");
   return False;
  }
  rdssl_cert_free(cacert);
  in_uint8s(s, 16);
  server_public_key = rdssl_cert_to_rkey(server_cert, &g_server_public_key_len);
  if (((void*)0) == server_public_key)
  {
   DEBUG_RDP5(("Didn't parse X509 correctly\n"));
   rdssl_cert_free(server_cert);
   return False;
  }
  rdssl_cert_free(server_cert);
  if ((g_server_public_key_len < SEC_MODULUS_SIZE) ||
      (g_server_public_key_len > SEC_MAX_MODULUS_SIZE))
  {
   error("Bad server public key size (%u bits)\n",
         g_server_public_key_len * 8);
   rdssl_rkey_free(server_public_key);
   return False;
  }
  if (rdssl_rkey_get_exp_mod(server_public_key, exponent, SEC_EXPONENT_SIZE,
        modulus, SEC_MAX_MODULUS_SIZE) != 0)
  {
   error("Problem extracting RSA exponent, modulus");
   rdssl_rkey_free(server_public_key);
   return False;
  }
  rdssl_rkey_free(server_public_key);
  return True;
 }
 return s_check_end(s);
}

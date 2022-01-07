
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int uint32 ;
typedef int signature ;
typedef int STREAM ;
typedef int RD_BOOL ;


 int DEBUG_RDP5 (char*) ;
 int SEC_EXPONENT_SIZE ;
 int SEC_MAX_MODULUS_SIZE ;
 int SEC_MODULUS_SIZE ;
 int True ;
 int g_server_public_key_len ;
 scalar_t__ g_testkey ;
 int in_uint8a (int ,int *,int) ;
 int memset (int *,int ,int) ;
 scalar_t__ rdssl_sign_ok (char*,int ,char*,int ,char*,int ,char*,int,char*) ;
 int s_check (int ) ;

__attribute__((used)) static RD_BOOL
sec_parse_public_sig(STREAM s, uint32 len, uint8 * modulus, uint8 * exponent)
{
 uint8 signature[SEC_MAX_MODULUS_SIZE];
 uint8 signature_[SEC_MAX_MODULUS_SIZE];
 uint32 sig_len;

 if (len != 72)
 {
  return True;
 }
 memset(signature, 0, sizeof(signature));
 sig_len = len - 8;
 in_uint8a(s, signature, sig_len);
    if(rdssl_sign_ok((char *)exponent, SEC_EXPONENT_SIZE, (char *)modulus, g_server_public_key_len,
                     (char *)signature_, SEC_MODULUS_SIZE, (char *)signature, sig_len, (char *)g_testkey))
    {
        DEBUG_RDP5(("key signature doesn't match test key\n"));
    }
 return s_check(s);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int EVP_CIPHER_CTX ;


 int EVP_CIPHER_CTX_free (int *) ;
 int * EVP_CIPHER_CTX_new () ;
 int EVP_CIPHER_CTX_set_key_length (int *,int) ;
 int EVP_EncryptInit_ex (int *,int *,int *,int const*,int *) ;
 int EVP_EncryptUpdate (int *,int*,int*,int const*,int) ;
 int * EVP_bf_ecb () ;
 scalar_t__ memcmp (int*,int const*,int) ;

__attribute__((used)) static int
bf_check_supported_key_len(void)
{
 static const uint8 key[56] = {
  0xf0, 0xe1, 0xd2, 0xc3, 0xb4, 0xa5, 0x96, 0x87, 0x78, 0x69,
  0x5a, 0x4b, 0x3c, 0x2d, 0x1e, 0x0f, 0x00, 0x11, 0x22, 0x33,
  0x44, 0x55, 0x66, 0x77, 0x04, 0x68, 0x91, 0x04, 0xc2, 0xfd,
  0x3b, 0x2f, 0x58, 0x40, 0x23, 0x64, 0x1a, 0xba, 0x61, 0x76,
  0x1f, 0x1f, 0x1f, 0x1f, 0x0e, 0x0e, 0x0e, 0x0e, 0xff, 0xff,
  0xff, 0xff, 0xff, 0xff, 0xff, 0xff
 };

 static const uint8 data[8] = {0xfe, 0xdc, 0xba, 0x98, 0x76, 0x54, 0x32, 0x10};
 static const uint8 res[8] = {0xc0, 0x45, 0x04, 0x01, 0x2e, 0x4e, 0x1f, 0x53};
 uint8 out[8];
 EVP_CIPHER_CTX *evp_ctx;
 int outlen;
 int status = 0;


 evp_ctx = EVP_CIPHER_CTX_new();
 if (!evp_ctx)
  return 0;
 if (!EVP_EncryptInit_ex(evp_ctx, EVP_bf_ecb(), ((void*)0), ((void*)0), ((void*)0)))
  goto leave;
 if (!EVP_CIPHER_CTX_set_key_length(evp_ctx, 56))
  goto leave;
 if (!EVP_EncryptInit_ex(evp_ctx, ((void*)0), ((void*)0), key, ((void*)0)))
  goto leave;

 if (!EVP_EncryptUpdate(evp_ctx, out, &outlen, data, 8))
  goto leave;

 if (memcmp(out, res, 8) != 0)
  goto leave;

 status = 1;

leave:
 EVP_CIPHER_CTX_free(evp_ctx);
 return status;
}

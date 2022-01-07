
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cipher_info {int int_name; } ;
typedef int PX_Cipher ;


 int PXE_PGP_CORRUPT_DATA ;
 int PXE_PGP_UNSUPPORTED_CIPHER ;
 struct cipher_info* get_cipher_info (int) ;
 int px_find_cipher (int ,int **) ;

int
pgp_load_cipher(int code, PX_Cipher **res)
{
 int err;
 const struct cipher_info *i = get_cipher_info(code);

 if (i == ((void*)0))
  return PXE_PGP_CORRUPT_DATA;

 err = px_find_cipher(i->int_name, res);
 if (err == 0)
  return 0;

 return PXE_PGP_UNSUPPORTED_CIPHER;
}

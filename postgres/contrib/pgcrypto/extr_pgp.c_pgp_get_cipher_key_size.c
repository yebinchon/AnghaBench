
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cipher_info {int key_len; } ;


 struct cipher_info* get_cipher_info (int) ;

int
pgp_get_cipher_key_size(int code)
{
 const struct cipher_info *i = get_cipher_info(code);

 if (i != ((void*)0))
  return i->key_len;
 return 0;
}

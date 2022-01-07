
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cipher_info {char const* name; } ;


 struct cipher_info* get_cipher_info (int) ;

const char *
pgp_get_cipher_name(int code)
{
 const struct cipher_info *i = get_cipher_info(code);

 if (i != ((void*)0))
  return i->name;
 return ((void*)0);
}

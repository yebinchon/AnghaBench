
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cipher_info {int code; scalar_t__ name; } ;


 struct cipher_info* cipher_list ;

__attribute__((used)) static const struct cipher_info *
get_cipher_info(int code)
{
 const struct cipher_info *i;

 for (i = cipher_list; i->name; i++)
  if (i->code == code)
   return i;
 return ((void*)0);
}

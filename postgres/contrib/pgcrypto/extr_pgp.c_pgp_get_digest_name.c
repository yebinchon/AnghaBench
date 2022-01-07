
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct digest_info {char const* name; int code; } ;


 struct digest_info* digest_list ;

const char *
pgp_get_digest_name(int code)
{
 const struct digest_info *i;

 for (i = digest_list; i->name; i++)
  if (i->code == code)
   return i->name;
 return ((void*)0);
}

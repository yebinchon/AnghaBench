
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct digest_info {int code; scalar_t__ name; } ;


 int PXE_PGP_UNSUPPORTED_HASH ;
 struct digest_info* digest_list ;
 scalar_t__ pg_strcasecmp (scalar_t__,char const*) ;

int
pgp_get_digest_code(const char *name)
{
 const struct digest_info *i;

 for (i = digest_list; i->name; i++)
  if (pg_strcasecmp(i->name, name) == 0)
   return i->code;
 return PXE_PGP_UNSUPPORTED_HASH;
}

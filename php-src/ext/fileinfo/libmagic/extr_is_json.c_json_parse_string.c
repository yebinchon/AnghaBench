
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DPRINTF (char*,unsigned char const*,unsigned char const*) ;
 int json_isxdigit (int ) ;

__attribute__((used)) static int
json_parse_string(const unsigned char **ucp, const unsigned char *ue)
{
 const unsigned char *uc = *ucp;
 size_t i;

 DPRINTF("Parse string: ", uc, *ucp);
 while (uc < ue) {
  switch (*uc++) {
  case '\0':
   goto out;
  case '\\':
   if (uc == ue)
    goto out;
   switch (*uc++) {
   case '\0':
    goto out;
   case '"':
   case '\\':
   case '/':
   case 'b':
   case 'f':
   case 'n':
   case 'r':
   case 't':
    continue;
   case 'u':
    if (ue - uc < 4) {
     uc = ue;
     goto out;
    }
    for (i = 0; i < 4; i++)
     if (!json_isxdigit(*uc++))
      goto out;
    continue;
   default:
    goto out;
   }
  case '"':
   *ucp = uc;
   return 1;
  default:
   continue;
  }
 }
out:
 DPRINTF("Bad string: ", uc, *ucp);
 *ucp = uc;
 return 0;
}

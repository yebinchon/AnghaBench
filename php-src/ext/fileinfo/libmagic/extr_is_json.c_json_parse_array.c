
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DPRINTF (char*,unsigned char const*,unsigned char const*) ;
 size_t JSON_ARRAYN ;
 int json_parse (unsigned char const**,unsigned char const*,size_t*,size_t) ;

__attribute__((used)) static int
json_parse_array(const unsigned char **ucp, const unsigned char *ue,
 size_t *st, size_t lvl)
{
 const unsigned char *uc = *ucp;
 int more = 0;

 DPRINTF("Parse array: ", uc, *ucp);
 while (uc < ue) {
  if (!json_parse(&uc, ue, st, lvl + 1))
   goto out;
  if (uc == ue)
   goto out;
  switch (*uc) {
  case ',':
   more++;
   uc++;
   continue;
  case ']':
   if (more)
    st[JSON_ARRAYN]++;
   *ucp = uc + 1;
   return 1;
  default:
   goto out;
  }
 }
out:
 DPRINTF("Bad array: ", uc, *ucp);
 *ucp = uc;
 return 0;
}

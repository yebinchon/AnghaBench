
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vars {int dummy; } ;
struct cname {int code; int * name; } ;
typedef int const chr ;


 int const CHR (int ) ;
 int ERR (int ) ;
 int NOTE (int ) ;
 int REG_ECOLLATE ;
 int REG_ULOCALE ;
 int assert (int) ;
 struct cname* cnames ;
 scalar_t__ pg_char_and_wchar_strncmp (int *,int const*,size_t) ;
 size_t strlen (int *) ;

__attribute__((used)) static chr
element(struct vars *v,
  const chr *startp,
  const chr *endp)
{
 const struct cname *cn;
 size_t len;


 assert(startp < endp);
 len = endp - startp;
 if (len == 1)
  return *startp;

 NOTE(REG_ULOCALE);


 for (cn = cnames; cn->name != ((void*)0); cn++)
 {
  if (strlen(cn->name) == len &&
   pg_char_and_wchar_strncmp(cn->name, startp, len) == 0)
  {
   break;
  }
 }
 if (cn->name != ((void*)0))
  return CHR(cn->code);


 ERR(REG_ECOLLATE);
 return 0;
}

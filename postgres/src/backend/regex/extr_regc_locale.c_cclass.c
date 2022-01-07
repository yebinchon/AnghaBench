
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vars {int dummy; } ;
struct cvec {int dummy; } ;
typedef enum classes { ____Placeholder_classes } classes ;
typedef int chr ;
 int ERR (int ) ;
 int REG_ECTYPE ;
 int REG_ESPACE ;
 int addchr (struct cvec*,char) ;
 int addrange (struct cvec*,char,float) ;
 char** classNames ;
 struct cvec* getcvec (struct vars*,int,int) ;
 scalar_t__ pg_char_and_wchar_strncmp (char const* const,int const*,size_t) ;
 struct cvec* pg_ctype_get_cache (int ,int) ;
 int pg_wc_isalnum ;
 int pg_wc_isalpha ;
 int pg_wc_isdigit ;
 int pg_wc_isgraph ;
 int pg_wc_islower ;
 int pg_wc_isprint ;
 int pg_wc_ispunct ;
 int pg_wc_isspace ;
 int pg_wc_isupper ;
 size_t strlen (char const* const) ;

__attribute__((used)) static struct cvec *
cclass(struct vars *v,
    const chr *startp,
    const chr *endp,
    int cases)
{
 size_t len;
 struct cvec *cv = ((void*)0);
 const char *const *namePtr;
 int i,
    index;




 len = endp - startp;
 index = -1;
 for (namePtr = classNames, i = 0; *namePtr != ((void*)0); namePtr++, i++)
 {
  if (strlen(*namePtr) == len &&
   pg_char_and_wchar_strncmp(*namePtr, startp, len) == 0)
  {
   index = i;
   break;
  }
 }
 if (index == -1)
 {
  ERR(REG_ECTYPE);
  return ((void*)0);
 }





 if (cases &&
  ((enum classes) index == 133 ||
   (enum classes) index == 129))
  index = (int) 139;
 switch ((enum classes) index)
 {
  case 132:
   cv = pg_ctype_get_cache(pg_wc_isprint, index);
   break;
  case 140:
   cv = pg_ctype_get_cache(pg_wc_isalnum, index);
   break;
  case 139:
   cv = pg_ctype_get_cache(pg_wc_isalpha, index);
   break;
  case 138:

   cv = getcvec(v, 0, 1);
   if (cv)
    addrange(cv, 0, 0x7f);
   break;
  case 137:

   cv = getcvec(v, 2, 0);
   addchr(cv, '\t');
   addchr(cv, ' ');
   break;
  case 136:

   cv = getcvec(v, 0, 2);
   addrange(cv, 0x0, 0x1f);
   addrange(cv, 0x7f, 0x9f);
   break;
  case 135:
   cv = pg_ctype_get_cache(pg_wc_isdigit, index);
   break;
  case 131:
   cv = pg_ctype_get_cache(pg_wc_ispunct, index);
   break;
  case 128:






   cv = getcvec(v, 0, 3);
   if (cv)
   {
    addrange(cv, '0', '9');
    addrange(cv, 'a', 'f');
    addrange(cv, 'A', 'F');
   }
   break;
  case 130:
   cv = pg_ctype_get_cache(pg_wc_isspace, index);
   break;
  case 133:
   cv = pg_ctype_get_cache(pg_wc_islower, index);
   break;
  case 129:
   cv = pg_ctype_get_cache(pg_wc_isupper, index);
   break;
  case 134:
   cv = pg_ctype_get_cache(pg_wc_isgraph, index);
   break;
 }


 if (cv == ((void*)0))
  ERR(REG_ESPACE);
 return cv;
}

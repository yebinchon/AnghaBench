
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* get_canonical_locale_name (int,char const*) ;
 int pg_free (char*) ;
 scalar_t__ pg_strcasecmp (char const*,char const*) ;
 scalar_t__ pg_strncasecmp (char*,char*,int) ;
 int strlen (char*) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static bool
equivalent_locale(int category, const char *loca, const char *locb)
{
 const char *chara;
 const char *charb;
 char *canona;
 char *canonb;
 int lena;
 int lenb;






 if (pg_strcasecmp(loca, locb) == 0)
  return 1;





 canona = get_canonical_locale_name(category, loca);
 chara = strrchr(canona, '.');
 lena = chara ? (chara - canona) : strlen(canona);

 canonb = get_canonical_locale_name(category, locb);
 charb = strrchr(canonb, '.');
 lenb = charb ? (charb - canonb) : strlen(canonb);

 if (lena == lenb && pg_strncasecmp(canona, canonb, lena) == 0)
 {
  pg_free(canona);
  pg_free(canonb);
  return 1;
 }

 pg_free(canona);
 pg_free(canonb);
 return 0;
}

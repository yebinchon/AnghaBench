
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8 ;


 int PXE_PGP_CORRUPT_ARMOR ;
 char* find_str (char const*,char const*,char const*,int ) ;
 scalar_t__ memcmp (char const*,char const*,int) ;
 int strlen (char const*) ;

__attribute__((used)) static int
find_header(const uint8 *data, const uint8 *datend,
   const uint8 **start_p, int is_end)
{
 const uint8 *p = data;
 static const char *start_sep = "-----BEGIN";
 static const char *end_sep = "-----END";
 const char *sep = is_end ? end_sep : start_sep;


 while (1)
 {
  p = find_str(p, datend, sep, strlen(sep));
  if (p == ((void*)0))
   return PXE_PGP_CORRUPT_ARMOR;

  if (p == data || *(p - 1) == '\n')
   break;
  p += strlen(sep);
 }
 *start_p = p;
 p += strlen(sep);


 for (; p < datend && *p != '-'; p++)
 {

  if (*p >= ' ')
   continue;
  return PXE_PGP_CORRUPT_ARMOR;
 }
 if (datend - p < 5 || memcmp(p, sep, 5) != 0)
  return PXE_PGP_CORRUPT_ARMOR;
 p += 5;


 if (p < datend)
 {
  if (*p != '\n' && *p != '\r')
   return PXE_PGP_CORRUPT_ARMOR;
  if (*p == '\r')
   p++;
  if (p < datend && *p == '\n')
   p++;
 }
 return p - *start_p;
}

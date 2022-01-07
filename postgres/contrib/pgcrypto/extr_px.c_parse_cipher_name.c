
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PXE_BAD_FORMAT ;
 int PXE_BAD_OPTION ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int
parse_cipher_name(char *full, char **cipher, char **pad)
{
 char *p,
      *p2,
      *q;

 *cipher = full;
 *pad = ((void*)0);

 p = strchr(full, '/');
 if (p != ((void*)0))
  *p++ = 0;
 while (p != ((void*)0))
 {
  if ((q = strchr(p, '/')) != ((void*)0))
   *q++ = 0;

  if (!*p)
  {
   p = q;
   continue;
  }
  p2 = strchr(p, ':');
  if (p2 != ((void*)0))
  {
   *p2++ = 0;
   if (strcmp(p, "pad") == 0)
    *pad = p2;
   else
    return PXE_BAD_OPTION;
  }
  else
   return PXE_BAD_FORMAT;

  p = q;
 }
 return 0;
}

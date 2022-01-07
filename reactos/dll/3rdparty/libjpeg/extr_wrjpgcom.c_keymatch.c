
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isupper (int) ;
 int tolower (int) ;

__attribute__((used)) static int
keymatch (char * arg, const char * keyword, int minchars)



{
  register int ca, ck;
  register int nmatched = 0;

  while ((ca = *arg++) != '\0') {
    if ((ck = *keyword++) == '\0')
      return 0;
    if (isupper(ca))
      ca = tolower(ca);
    if (ca != ck)
      return 0;
    nmatched++;
  }

  if (nmatched < minchars)
    return 0;
  return 1;
}

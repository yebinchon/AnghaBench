
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PERIOD ;
 int borderchar (int) ;
 int middlechar (int) ;
 scalar_t__ periodchar (int) ;

int
res_hnok(const char *dn)
{
 int pch = PERIOD, ch = *dn++;

 while (ch != '\0') {
  int nch = *dn++;

  if (periodchar(ch)) {
   ;
  } else if (periodchar(pch)) {
   if (!borderchar(ch))
    return (0);
  } else if (periodchar(nch) || nch == '\0') {
   if (!borderchar(ch))
    return (0);
  } else {
   if (!middlechar(ch))
    return (0);
  }
  pch = ch, ch = nch;
 }
 return (1);
}

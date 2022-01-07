
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int utf_charcheck (unsigned char*) ;

__attribute__((used)) static void
mb_utf_validate(unsigned char *pwcs)
{
 unsigned char *p = pwcs;

 while (*pwcs)
 {
  int len;

  if ((len = utf_charcheck(pwcs)) > 0)
  {
   if (p != pwcs)
   {
    int i;

    for (i = 0; i < len; i++)
     *p++ = *pwcs++;
   }
   else
   {
    pwcs += len;
    p += len;
   }
  }
  else

   pwcs++;
 }
 if (p != pwcs)
  *p = '\0';
}

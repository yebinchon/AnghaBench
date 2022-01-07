
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int iconv_t ;


 int BUFSIZ ;
 scalar_t__ E2BIG ;
 scalar_t__ EILSEQ ;
 scalar_t__ EINVAL ;
 unsigned char ESC ;
 int EUCSTR ;
 int FALSE ;
 int NEWJISSTR ;
 int OLDJISSTR ;
 int SJISSTR ;
 int SJIStoJIS (int*,int*) ;
 unsigned char SS2 ;
 int TRUE ;
 scalar_t__ errno ;
 int error (char*,...) ;
 scalar_t__ iconv (int ,char**,size_t*,char**,size_t*) ;
 scalar_t__ iconv_close (int ) ;
 int iconv_open (int ,char const*) ;
 scalar_t__ strcmp (char const*,int ) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;
 int ustrcpy (unsigned char*,unsigned char*) ;

__attribute__((used)) static void
do_convert (unsigned char *to, unsigned char *from, const char *code)
{
  int p1, p2, i, j;
  int jisx0208 = FALSE;
  int hankaku = FALSE;

  j = 0;
  if (strcmp (code, NEWJISSTR) == 0 || strcmp (code, OLDJISSTR) == 0)
    {
      for (i = 0; from[i] != '\0' && j < BUFSIZ; i++)
 {
   if (from[i] == ESC)
     {
       i++;
       if (from[i] == '$')
  {
    jisx0208 = TRUE;
    hankaku = FALSE;
    i++;
  }
       else if (from[i] == '(')
  {
    jisx0208 = FALSE;
    i++;
    if (from[i] == 'I')
      hankaku = TRUE;
    else
      hankaku = FALSE;
  }
     }
   else
     {
       if (jisx0208)
  to[j++] = from[i] + 128;
       else if (hankaku)
  {
    to[j++] = SS2;
    to[j++] = from[i] + 128;
  }
       else
  to[j++] = from[i];
     }
 }
    }
  else if (strcmp (code, SJISSTR) == 0)
    {
      for (i = 0; from[i] != '\0' && j < BUFSIZ; i++)
 {
   p1 = from[i];
   if (p1 < 127)
     to[j++] = p1;
   else if ((p1 >= 161) && (p1 <= 223))
     {
       to[j++] = SS2;
       to[j++] = p1;
     }
   else
     {
       p2 = from[++i];
       SJIStoJIS (&p1, &p2);
       to[j++] = p1 + 128;
       to[j++] = p2 + 128;
     }
 }
    }
  else
    {
      error ("invalid code specification: \"%s\"", code);
      return;
    }

  if (j >= BUFSIZ)
    {
      error ("output buffer overflow at do_convert()");
      ustrcpy (to, from);
    }
  else
    to[j] = '\0';

}

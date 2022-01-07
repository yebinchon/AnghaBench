
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void
ascii_safe_strlcpy(char *dest, const char *src, size_t destsiz)
{
 if (destsiz == 0)
  return;

 while (--destsiz > 0)
 {

  unsigned char ch = *src++;

  if (ch == '\0')
   break;

  if (32 <= ch && ch <= 127)
   *dest = ch;

  else if (ch == '\n' || ch == '\r' || ch == '\t')
   *dest = ch;

  else
   *dest = '?';
  dest++;
 }

 *dest = '\0';
}

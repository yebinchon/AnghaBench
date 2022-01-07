
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;



__attribute__((used)) static char *
sanitize_str(const char *s)
{
 static char buf[30 + 1];
 int i;

 for (i = 0; i < sizeof(buf) - 1; i++)
 {
  char c = s[i];

  if (c == '\0')
   break;

  if (c >= 0x21 && c <= 0x7E)
   buf[i] = c;
  else
   buf[i] = '?';
 }
 buf[i] = '\0';
 return buf;
}

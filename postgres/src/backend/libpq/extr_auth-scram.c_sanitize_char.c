
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int snprintf (char*,int,char*,unsigned char) ;

__attribute__((used)) static char *
sanitize_char(char c)
{
 static char buf[5];

 if (c >= 0x21 && c <= 0x7E)
  snprintf(buf, sizeof(buf), "'%c'", c);
 else
  snprintf(buf, sizeof(buf), "0x%02x", (unsigned char) c);
 return buf;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pg_wchar ;


 int BUF_DIGITS ;
 int snprintf (char*,int,char*,int const) ;

__attribute__((used)) static char *
print_wchar_str(const pg_wchar *s)
{

 static char buf[50 * 2 + 1];
 int i;

 i = 0;
 while (*s && i < 50)
 {
  snprintf(&buf[i * 2], 3, "%04X", *s);
  i++;
  s++;
 }
 buf[i * 2] = '\0';
 return buf;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int strlen (char*) ;
 int vsnprintf (char*,int,char const*,int ) ;

__attribute__((used)) static void strcat_vprintf(char *buf, int buf_size, const char *fmt, va_list ap)
{
 int len;
 len = strlen (buf);
 vsnprintf (buf + len, buf_size - len, fmt, ap);
}

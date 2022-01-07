
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int vspprintf (char**,size_t,char const*,int ) ;

__attribute__((used)) static int _mysqlnd_vsprintf(char ** pbuf, size_t max_len, const char * format, va_list ap)
{
 return vspprintf(pbuf, max_len, format, ap);
}

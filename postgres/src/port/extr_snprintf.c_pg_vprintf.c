
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int pg_vfprintf (int ,char const*,int ) ;
 int stdout ;

int
pg_vprintf(const char *fmt, va_list args)
{
 return pg_vfprintf(stdout, fmt, args);
}

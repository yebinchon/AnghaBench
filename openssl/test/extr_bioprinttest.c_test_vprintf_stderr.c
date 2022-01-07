
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int stderr ;
 int vfprintf (int ,char const*,int ) ;

int test_vprintf_stderr(const char *fmt, va_list ap)
{
    return vfprintf(stderr, fmt, ap);
}

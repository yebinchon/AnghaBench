
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef scalar_t__ grub_size_t ;


 scalar_t__ grub_vsnprintf_real (char*,scalar_t__,char const*,int ) ;

int
grub_vsnprintf (char *str, grub_size_t n, const char *fmt, va_list ap)
{
  grub_size_t ret;

  if (!n)
    return 0;

  n--;

  ret = grub_vsnprintf_real (str, n, fmt, ap);

  return ret < n ? ret : n;
}

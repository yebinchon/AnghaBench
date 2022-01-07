
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int grub_vsnprintf_real (int ,int ,char const*,int ) ;

int
grub_vprintf (const char *fmt, va_list args)
{
  int ret;

  ret = grub_vsnprintf_real (0, 0, fmt, args);
  return ret;
}

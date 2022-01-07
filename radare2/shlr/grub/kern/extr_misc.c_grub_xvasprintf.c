
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int grub_size_t ;


 int PREALLOC_SIZE ;
 int grub_free (char*) ;
 char* grub_malloc (int ) ;
 int grub_vsnprintf_real (char*,int ,char const*,int ) ;

char *
grub_xvasprintf (const char *fmt, va_list ap)
{
  grub_size_t s, as = PREALLOC_SIZE;
  char *ret;

  while (1)
    {
      ret = grub_malloc (as + 1);
      if (!ret)
 return ((void*)0);

      s = grub_vsnprintf_real (ret, as, fmt, ap);
      if (s <= as)
 return ret;

      grub_free (ret);
      as = s;
    }
}

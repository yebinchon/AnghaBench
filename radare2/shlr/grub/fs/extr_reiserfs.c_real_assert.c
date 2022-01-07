
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int grub_printf (char*,char const*,int const) ;

__attribute__((used)) static inline void
real_assert (int boolean, const char *file, const int line)
{
  if (! boolean)
    grub_printf ("Assertion failed at %s:%d\n", file, line);
}

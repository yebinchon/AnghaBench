
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ grub_size_t ;


 scalar_t__ grub_malloc (scalar_t__) ;
 char* grub_memcpy (char*,char const*,scalar_t__) ;
 scalar_t__ grub_strlen (char const*) ;

char *
grub_strdup (const char *s)
{
  grub_size_t len;
  char *p;

  len = grub_strlen (s) + 1;
  p = (char *) grub_malloc (len);
  if (! p)
    return 0;

  return grub_memcpy (p, s, len);
}

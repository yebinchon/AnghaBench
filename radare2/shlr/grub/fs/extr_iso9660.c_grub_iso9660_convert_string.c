
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int grub_uint8_t ;
typedef int grub_uint16_t ;


 int grub_be_to_cpu16 (int ) ;
 char* grub_malloc (int) ;
 char* grub_utf16_to_utf8 (int *,int *,int) ;

__attribute__((used)) static char *
grub_iso9660_convert_string (grub_uint16_t *us, int len)
{
  char *p;
  int i;

  p = grub_malloc (len * 4 + 1);
  if (! p)
    return p;

  for (i=0; i<len; i++)
    us[i] = grub_be_to_cpu16 (us[i]);

  *grub_utf16_to_utf8 ((grub_uint8_t *) p, us, len) = '\0';

  return p;
}

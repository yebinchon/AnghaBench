
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GRUB_ERR_BAD_FILENAME ;
 int grub_error (int ,char*) ;
 scalar_t__ grub_malloc (int) ;
 int grub_memcpy (char*,char const*,int) ;
 char* grub_strchr (char const*,char) ;

char *
grub_file_get_device_name (const char *name)
{
  if (name[0] == '(')
    {
      char *p = grub_strchr (name, ')');
      char *ret;

      if (! p)
 {
   grub_error (GRUB_ERR_BAD_FILENAME, "missing `)'");
   return 0;
 }

      ret = (char *) grub_malloc (p - name);
      if (! ret)
 return 0;

      grub_memcpy (ret, name + 1, p - name - 1);
      ret[p - name - 1] = '\0';
      return ret;
    }

  return 0;
}

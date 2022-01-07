
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GRUB_ERR_BAD_NUMBER ;
 int GRUB_ERR_OUT_OF_RANGE ;
 unsigned long long grub_divmod64 (unsigned long long,int,int ) ;
 int grub_error (int ,char*) ;
 scalar_t__ grub_isspace (char const) ;
 unsigned long grub_tolower (char const) ;

unsigned long long
grub_strtoull (const char *str, char **end, int base)
{
  unsigned long long num = 0;
  int found = 0;


  while (*str && grub_isspace (*str))
    str++;



  if (str[0] == '0')
    {
      if (str[1] == 'x')
 {
   if (base == 0 || base == 16)
     {
       base = 16;
       str += 2;
     }
 }
      else if (base == 0 && str[1] >= '0' && str[1] <= '7')
 base = 8;
    }

  if (base == 0)
    base = 10;

  while (*str)
    {
      unsigned long digit;

      digit = grub_tolower (*str) - '0';
      if (digit > 9)
 {
   digit += '0' - 'a' + 10;
   if (digit >= (unsigned long) base)
     break;
 }

      found = 1;


      if (num > grub_divmod64 (~0ULL - digit, base, 0))
 {
   grub_error (GRUB_ERR_OUT_OF_RANGE, "overflow is detected");
   return ~0ULL;
 }

      num = num * base + digit;
      str++;
    }

  if (! found)
    {
      grub_error (GRUB_ERR_BAD_NUMBER, "unrecognized number");
      return 0;
    }

  if (end)
    *end = (char *) str;

  return num;
}

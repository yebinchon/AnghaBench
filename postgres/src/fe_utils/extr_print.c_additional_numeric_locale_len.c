
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int decimal_point ;
 int groupdigits ;
 int integer_digits (char const*) ;
 int * strchr (char const*,char) ;
 int strlen (int ) ;
 int thousands_sep ;

__attribute__((used)) static int
additional_numeric_locale_len(const char *my_str)
{
 int int_len = integer_digits(my_str),
    len = 0;


 if (int_len > groupdigits)
  len += ((int_len - 1) / groupdigits) * strlen(thousands_sep);


 if (strchr(my_str, '.') != ((void*)0))
  len += strlen(decimal_point) - 1;

 return len;
}

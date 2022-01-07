
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t strlen (char const*) ;
 scalar_t__ strpbrk (char const*,char*) ;

__attribute__((used)) static int
check_ascii_format(const char *format)
{
    char format_char;
    size_t format_len = strlen(format);


    format_char = format[format_len - 1];

    if (format[0] != '%') {
        return -1;
    }







    if (strpbrk(format + 1, "'l%")) {
        return -1;
    }







    if (!(format_char == 'e' || format_char == 'E'
          || format_char == 'f' || format_char == 'F'
          || format_char == 'g' || format_char == 'G')) {
        return -1;
    }

    return 0;
}

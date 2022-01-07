
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lconv {char* decimal_point; } ;


 int Py_CHARMASK (char) ;
 scalar_t__ isdigit (int ) ;
 struct lconv* localeconv () ;
 int memmove (char*,char*,size_t) ;
 size_t strlen (char const*) ;
 scalar_t__ strncmp (char*,char const*,size_t) ;

__attribute__((used)) static void
change_decimal_from_locale_to_dot(char* buffer)
{
    struct lconv *locale_data = localeconv();
    const char *decimal_point = locale_data->decimal_point;

    if (decimal_point[0] != '.' || decimal_point[1] != 0) {
        size_t decimal_point_len = strlen(decimal_point);

        if (*buffer == '+' || *buffer == '-') {
            buffer++;
        }
        while (isdigit(Py_CHARMASK(*buffer))) {
            buffer++;
        }
        if (strncmp(buffer, decimal_point, decimal_point_len) == 0) {
            *buffer = '.';
            buffer++;
            if (decimal_point_len > 1) {

                size_t rest_len = strlen(buffer + (decimal_point_len - 1));
                memmove(buffer, buffer + (decimal_point_len - 1), rest_len);
                buffer[rest_len] = 0;
            }
        }
    }
}

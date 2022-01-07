
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isspace (char) ;
 scalar_t__ string_is_fully_read (char*,char const*) ;

__attribute__((used)) static int
fromstr_skip_separator(char **s, const char *sep, const char *end)
{
    char *string = *s;
    int result = 0;

    while (1) {
        char c = *string;
        if (string_is_fully_read(string, end)) {
            result = -1;
            break;
        }
        else if (*sep == '\0') {
            if (string != *s) {

                result = 0;
                break;
            }
            else {

                result = -2;
                break;
            }
        }
        else if (*sep == ' ') {

            if (!isspace(c)) {
                sep++;
                continue;
            }
        }
        else if (*sep != c) {
            result = -2;
            break;
        }
        else {
            sep++;
        }
        string++;
    }
    *s = string;
    return result;
}

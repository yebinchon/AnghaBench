
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool
get_key_value(const char *str,
              char *key,
              char *value,
              int max_key_len,
              int max_value_len,
              const char **endptr)
{
    int c;
    bool starts_with_quote = 0;
    bool escape = 0;

    for (c = max_key_len-1; (*str && (*str != '=') && c--); )
    {
        *key++ = *str++;
    }
    *key = '\0';

    if ('=' != *str++)
    {

        return 0;
    }

    if ('\"' == *str)
    {

        str++;
        starts_with_quote = 1;
    }

    for (c = max_value_len-1; *str && c--; str++)
    {
        switch (*str)
        {
            case '\\':
                if (!escape)
                {

                    escape = 1;
                    *value++ = '\\';

                    continue;
                }
                break;

            case ',':
                if (!starts_with_quote)
                {


                    c = 0;
                    continue;
                }
                break;

            case '\r':
            case '\n':

                c = 0;
                continue;

            case '\"':
                if (!escape && starts_with_quote)
                {

                    c = 0;
                    continue;
                }
                break;
        }
        escape = 0;
        *value++ = *str;
    }
    *value = '\0';

    *endptr = str;

    return 1;
}

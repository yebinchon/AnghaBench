
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t strlen (char const*) ;

__attribute__((used)) static int is_dNS_name(const char *host)
{
    const size_t MAX_LABEL_LENGTH = 63;
    size_t i;
    int isdnsname = 0;
    size_t length = strlen(host);
    size_t label_length = 0;
    int all_numeric = 1;
    for (i = 0; i < length && label_length < MAX_LABEL_LENGTH; ++i) {
        char c = host[i];

        if ((c >= 'a' && c <= 'z')
            || (c >= 'A' && c <= 'Z')
            || c == '_') {
            label_length += 1;
            all_numeric = 0;
            continue;
        }

        if (c >= '0' && c <= '9') {
            label_length += 1;
            continue;
        }


        if (i > 0 && i < length - 1) {
            if (c == '-') {
                label_length += 1;
                continue;
            }





            if (c == '.'
                && host[i + 1] != '.'
                && host[i - 1] != '-'
                && host[i + 1] != '-') {
                label_length = 0;
                isdnsname = 1;
                continue;
            }
        }
        isdnsname = 0;
        break;
    }


    isdnsname &= !all_numeric && !(label_length == MAX_LABEL_LENGTH);

    return isdnsname;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ mp_isdigit (char const) ;
 scalar_t__ mp_tolower (char const) ;

int mp_natural_sort_cmp(const char *name1, const char *name2)
{
    while (name1[0] && name2[0]) {
        if (mp_isdigit(name1[0]) && mp_isdigit(name2[0])) {
            while (name1[0] == '0')
                name1++;
            while (name2[0] == '0')
                name2++;
            const char *end1 = name1, *end2 = name2;
            while (mp_isdigit(*end1))
                end1++;
            while (mp_isdigit(*end2))
                end2++;

            if ((end1 - name1) < (end2 - name2))
                return -1;
            if ((end1 - name1) > (end2 - name2))
                return 1;

            while (name1 < end1) {
                if (name1[0] < name2[0])
                    return -1;
                if (name1[0] > name2[0])
                    return 1;
                name1++;
                name2++;
            }
        } else {
            if (mp_tolower(name1[0]) < mp_tolower(name2[0]))
                return -1;
            if (mp_tolower(name1[0]) > mp_tolower(name2[0]))
                return 1;
            name1++;
            name2++;
        }
    }
    if (name2[0])
        return -1;
    if (name1[0])
        return 1;
    return 0;
}

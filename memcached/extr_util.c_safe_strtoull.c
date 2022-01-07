
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint64_t ;


 scalar_t__ ERANGE ;
 int assert (int ) ;
 scalar_t__ errno ;
 int * strchr (char const*,char) ;
 unsigned long long strtoull (char const*,char**,int) ;
 scalar_t__ xisspace (char) ;

bool safe_strtoull(const char *str, uint64_t *out) {
    assert(out != ((void*)0));
    errno = 0;
    *out = 0;
    char *endptr;
    unsigned long long ull = strtoull(str, &endptr, 10);
    if ((errno == ERANGE) || (str == endptr)) {
        return 0;
    }

    if (xisspace(*endptr) || (*endptr == '\0' && endptr != str)) {
        if ((long long) ull < 0) {



            if (strchr(str, '-') != ((void*)0)) {
                return 0;
            }
        }
        *out = ull;
        return 1;
    }
    return 0;
}

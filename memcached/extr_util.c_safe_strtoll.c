
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long long int64_t ;


 scalar_t__ ERANGE ;
 int assert (int ) ;
 scalar_t__ errno ;
 long long strtoll (char const*,char**,int) ;
 scalar_t__ xisspace (char) ;

bool safe_strtoll(const char *str, int64_t *out) {
    assert(out != ((void*)0));
    errno = 0;
    *out = 0;
    char *endptr;
    long long ll = strtoll(str, &endptr, 10);
    if ((errno == ERANGE) || (str == endptr)) {
        return 0;
    }

    if (xisspace(*endptr) || (*endptr == '\0' && endptr != str)) {
        *out = ll;
        return 1;
    }
    return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ERANGE ;
 int assert (int ) ;
 scalar_t__ errno ;
 double strtod (char const*,char**) ;
 scalar_t__ xisspace (char) ;

bool safe_strtod(const char *str, double *out) {
    assert(out != ((void*)0));
    errno = 0;
    *out = 0;
    char *endptr;
    double d = strtod(str, &endptr);
    if ((errno == ERANGE) || (str == endptr)) {
        return 0;
    }

    if (xisspace(*endptr) || (*endptr == '\0' && endptr != str)) {
        *out = d;
        return 1;
    }
    return 0;
}

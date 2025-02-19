
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const FILTER_QM ;
 char const FILTER_STAR ;
 char* skip_stars (char const*) ;

__attribute__((used)) static int readdir_filter(
    const char *filter,
    const char *name)
{
    const char *f = filter, *n = name;

    while (*f && *n) {
        if (*f == FILTER_STAR) {
            f = skip_stars(f);
            if (*f == '\0')
                return 1;
            while (*n && !readdir_filter(f, n))
                n++;
        } else if (*f == FILTER_QM || *f == *n) {
            f++;
            n++;
        } else
            return 0;
    }
    return *f == *n || *skip_stars(f) == '\0';
}

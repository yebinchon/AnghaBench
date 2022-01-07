
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isalnum (char const) ;
 scalar_t__ strchr (char const*,char const) ;

__attribute__((used)) static int
urlcount(const char *p, const char *keep) {
    int k;
    for (k = 0; *p != 0; p++) {
        if (isalnum(*p) || *p == ' ' ||
            (keep != 0 && strchr(keep, *p) != 0))
        {
            k++;
        }
        else {
            k += 3;
        }
    }
    return k;
}

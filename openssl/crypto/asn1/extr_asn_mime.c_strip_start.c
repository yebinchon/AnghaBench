
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ossl_isspace (char) ;

__attribute__((used)) static char *strip_start(char *name)
{
    char *p, c;

    for (p = name; (c = *p); p++) {
        if (c == '"') {

            if (p[1])
                return p + 1;

            return ((void*)0);
        }
        if (!ossl_isspace(c))
            return p;
    }
    return ((void*)0);
}

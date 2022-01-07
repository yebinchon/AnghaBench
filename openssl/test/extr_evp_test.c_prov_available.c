
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ OSSL_PROVIDER_available (int *,char*) ;
 scalar_t__ isspace (char) ;

__attribute__((used)) static int prov_available(char *providers)
{
    char *p;
    int more = 1;

    while (more) {
        for (; isspace(*providers); providers++)
            continue;
        if (*providers == '\0')
            break;
        for (p = providers; *p != '\0' && !isspace(*p); p++)
            continue;
        if (*p == '\0')
            more = 0;
        else
            *p = '\0';
        if (OSSL_PROVIDER_available(((void*)0), providers))
            return 1;
    }
    return 0;
}

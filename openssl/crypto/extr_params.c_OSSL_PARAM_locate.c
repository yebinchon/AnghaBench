
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * key; } ;
typedef TYPE_1__ OSSL_PARAM ;


 scalar_t__ strcmp (char const*,int *) ;

OSSL_PARAM *OSSL_PARAM_locate(OSSL_PARAM *p, const char *key)
{
    if (p != ((void*)0) && key != ((void*)0))
        for (; p->key != ((void*)0); p++)
            if (strcmp(key, p->key) == 0)
                return p;
    return ((void*)0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ return_size; int * data; int * key; } ;
typedef TYPE_1__ OSSL_PARAM ;


 TYPE_1__* OPENSSL_zalloc (size_t) ;

__attribute__((used)) static OSSL_PARAM *paramdefs_to_params(const OSSL_PARAM *paramdefs)
{
    size_t cnt;
    const OSSL_PARAM *p;
    OSSL_PARAM *params = ((void*)0), *q;

    for (cnt = 1, p = paramdefs; p->key != ((void*)0); p++, cnt++)
        continue;

    params = OPENSSL_zalloc(cnt * sizeof(*params));
    if (params == ((void*)0))
        return ((void*)0);

    for (p = paramdefs, q = params; ; p++, q++) {
        *q = *p;
        if (p->key == ((void*)0))
            break;

        q->data = ((void*)0);
        q->return_size = 0;
    }

    return params;
}

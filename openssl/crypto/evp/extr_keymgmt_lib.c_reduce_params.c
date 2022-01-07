
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ return_size; int * key; } ;
typedef TYPE_1__ OSSL_PARAM ;


 TYPE_1__* OPENSSL_realloc (TYPE_1__*,size_t) ;

__attribute__((used)) static OSSL_PARAM *reduce_params(OSSL_PARAM *params)
{
    OSSL_PARAM *curr, *next;
    size_t cnt;

    for (cnt = 0, curr = next = params; next->key != ((void*)0); next++) {
        if (next->return_size == 0)
            continue;
        if (curr != next)
            *curr = *next;
        curr++;
        cnt++;
    }
    *curr = *next;
    cnt++;

    curr = OPENSSL_realloc(params, cnt * sizeof(*params));
    if (curr == ((void*)0))
        return params;
    return curr;
}

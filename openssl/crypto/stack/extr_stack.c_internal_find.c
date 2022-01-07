
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num; void const** data; int sorted; int * comp; } ;
typedef TYPE_1__ OPENSSL_STACK ;


 void* ossl_bsearch (void const**,void const**,int,int,int *,int) ;
 int qsort (void const**,int,int,int *) ;

__attribute__((used)) static int internal_find(OPENSSL_STACK *st, const void *data,
                         int ret_val_options)
{
    const void *r;
    int i;

    if (st == ((void*)0) || st->num == 0)
        return -1;

    if (st->comp == ((void*)0)) {
        for (i = 0; i < st->num; i++)
            if (st->data[i] == data)
                return i;
        return -1;
    }

    if (!st->sorted) {
        if (st->num > 1)
            qsort(st->data, st->num, sizeof(void *), st->comp);
        st->sorted = 1;
    }
    if (data == ((void*)0))
        return -1;
    r = ossl_bsearch(&data, st->data, st->num, sizeof(void *), st->comp,
                     ret_val_options);

    return r == ((void*)0) ? -1 : (int)((const void **)r - st->data);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * field_data1; int * field_data2; } ;
typedef TYPE_1__ EC_GROUP ;


 int BN_MONT_CTX_copy (int *,int *) ;
 int BN_MONT_CTX_free (int *) ;
 int * BN_MONT_CTX_new () ;
 int BN_clear_free (int *) ;
 int * BN_dup (int *) ;
 int ec_GFp_simple_group_copy (TYPE_1__*,TYPE_1__ const*) ;

int ec_GFp_mont_group_copy(EC_GROUP *dest, const EC_GROUP *src)
{
    BN_MONT_CTX_free(dest->field_data1);
    dest->field_data1 = ((void*)0);
    BN_clear_free(dest->field_data2);
    dest->field_data2 = ((void*)0);

    if (!ec_GFp_simple_group_copy(dest, src))
        return 0;

    if (src->field_data1 != ((void*)0)) {
        dest->field_data1 = BN_MONT_CTX_new();
        if (dest->field_data1 == ((void*)0))
            return 0;
        if (!BN_MONT_CTX_copy(dest->field_data1, src->field_data1))
            goto err;
    }
    if (src->field_data2 != ((void*)0)) {
        dest->field_data2 = BN_dup(src->field_data2);
        if (dest->field_data2 == ((void*)0))
            goto err;
    }

    return 1;

 err:
    BN_MONT_CTX_free(dest->field_data1);
    dest->field_data1 = ((void*)0);
    return 0;
}

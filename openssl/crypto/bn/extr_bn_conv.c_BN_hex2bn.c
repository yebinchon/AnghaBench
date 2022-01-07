
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int* d; int top; int neg; } ;
typedef int BN_ULONG ;
typedef TYPE_1__ BIGNUM ;


 int BN_BYTES ;
 int BN_free (TYPE_1__*) ;
 TYPE_1__* BN_new () ;
 int BN_zero (TYPE_1__*) ;
 int INT_MAX ;
 int OPENSSL_hexchar2int (int) ;
 int bn_check_top (TYPE_1__*) ;
 int bn_correct_top (TYPE_1__*) ;
 int * bn_expand (TYPE_1__*,int) ;
 scalar_t__ ossl_isxdigit (char const) ;

int BN_hex2bn(BIGNUM **bn, const char *a)
{
    BIGNUM *ret = ((void*)0);
    BN_ULONG l = 0;
    int neg = 0, h, m, i, j, k, c;
    int num;

    if (a == ((void*)0) || *a == '\0')
        return 0;

    if (*a == '-') {
        neg = 1;
        a++;
    }

    for (i = 0; i <= INT_MAX / 4 && ossl_isxdigit(a[i]); i++)
        continue;

    if (i == 0 || i > INT_MAX / 4)
        goto err;

    num = i + neg;
    if (bn == ((void*)0))
        return num;


    if (*bn == ((void*)0)) {
        if ((ret = BN_new()) == ((void*)0))
            return 0;
    } else {
        ret = *bn;
        BN_zero(ret);
    }


    if (bn_expand(ret, i * 4) == ((void*)0))
        goto err;

    j = i;
    m = 0;
    h = 0;
    while (j > 0) {
        m = (BN_BYTES * 2 <= j) ? BN_BYTES * 2 : j;
        l = 0;
        for (;;) {
            c = a[j - m];
            k = OPENSSL_hexchar2int(c);
            if (k < 0)
                k = 0;
            l = (l << 4) | k;

            if (--m <= 0) {
                ret->d[h++] = l;
                break;
            }
        }
        j -= BN_BYTES * 2;
    }
    ret->top = h;
    bn_correct_top(ret);

    *bn = ret;
    bn_check_top(ret);

    if (ret->top != 0)
        ret->neg = neg;
    return num;
 err:
    if (*bn == ((void*)0))
        BN_free(ret);
    return 0;
}

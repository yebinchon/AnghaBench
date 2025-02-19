
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int top; int* d; scalar_t__ neg; } ;
typedef int BIO ;
typedef TYPE_1__ BIGNUM ;


 int BIO_write (int *,char*,int) ;
 int BN_BITS2 ;
 scalar_t__ BN_is_zero (TYPE_1__ const*) ;
 char* Hex ;

int BN_print(BIO *bp, const BIGNUM *a)
{
    int i, j, v, z = 0;
    int ret = 0;

    if ((a->neg) && BIO_write(bp, "-", 1) != 1)
        goto end;
    if (BN_is_zero(a) && BIO_write(bp, "0", 1) != 1)
        goto end;
    for (i = a->top - 1; i >= 0; i--) {
        for (j = BN_BITS2 - 4; j >= 0; j -= 4) {

            v = (int)((a->d[i] >> j) & 0x0f);
            if (z || v != 0) {
                if (BIO_write(bp, &Hex[v], 1) != 1)
                    goto end;
                z = 1;
            }
        }
    }
    ret = 1;
 end:
    return ret;
}

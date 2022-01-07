
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int top; int * d; } ;
typedef int BN_ULONG ;
typedef TYPE_1__ BIGNUM ;


 int memcpy (int *,int *,int) ;
 int memset (int *,int ,int) ;

int bn_copy_words(BN_ULONG *out, const BIGNUM *in, int size)
{
    if (in->top > size)
        return 0;

    memset(out, 0, sizeof(*out) * size);
    if (in->d != ((void*)0))
        memcpy(out, in->d, sizeof(*out) * in->top);
    return 1;
}

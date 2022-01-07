
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ossl_uintmax_t ;
struct TYPE_3__ {int top; void** nodes; int levels; } ;
typedef TYPE_1__ OPENSSL_SA ;


 int OPENSSL_SA_BLOCK_BITS ;
 int SA_BLOCK_MASK ;

void *OPENSSL_SA_get(const OPENSSL_SA *sa, ossl_uintmax_t n)
{
    int level;
    void **p, *r = ((void*)0);

    if (sa == ((void*)0))
        return ((void*)0);

    if (n <= sa->top) {
        p = sa->nodes;
        for (level = sa->levels - 1; p != ((void*)0) && level > 0; level--)
            p = (void **)p[(n >> (OPENSSL_SA_BLOCK_BITS * level))
                           & SA_BLOCK_MASK];
        r = p == ((void*)0) ? ((void*)0) : p[n & SA_BLOCK_MASK];
    }
    return r;
}

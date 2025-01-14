
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ossl_uintmax_t ;
struct TYPE_3__ {int levels; void** nodes; int top; int nelem; } ;
typedef TYPE_1__ OPENSSL_SA ;


 int OPENSSL_SA_BLOCK_BITS ;
 int SA_BLOCK_MASK ;
 int SA_BLOCK_MAX_LEVELS ;
 void* alloc_node () ;

int OPENSSL_SA_set(OPENSSL_SA *sa, ossl_uintmax_t posn, void *val)
{
    int i, level = 1;
    ossl_uintmax_t n = posn;
    void **p;

    if (sa == ((void*)0))
        return 0;

    for (level = 1; level < SA_BLOCK_MAX_LEVELS; level++)
        if ((n >>= OPENSSL_SA_BLOCK_BITS) == 0)
            break;

    for (;sa->levels < level; sa->levels++) {
        p = alloc_node();
        if (p == ((void*)0))
            return 0;
        p[0] = sa->nodes;
        sa->nodes = p;
    }
    if (sa->top < posn)
        sa->top = posn;

    p = sa->nodes;
    for (level = sa->levels - 1; level > 0; level--) {
        i = (posn >> (OPENSSL_SA_BLOCK_BITS * level)) & SA_BLOCK_MASK;
        if (p[i] == ((void*)0) && (p[i] = alloc_node()) == ((void*)0))
            return 0;
        p = p[i];
    }
    p += posn & SA_BLOCK_MASK;
    if (val == ((void*)0) && *p != ((void*)0))
        sa->nelem--;
    else if (val != ((void*)0) && *p == ((void*)0))
        sa->nelem++;
    *p = val;
    return 1;
}

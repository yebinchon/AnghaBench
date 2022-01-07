
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {unsigned int num_nodes; TYPE_1__** b; } ;
struct TYPE_5__ {struct TYPE_5__* next; } ;
typedef TYPE_1__ OPENSSL_LH_NODE ;
typedef TYPE_2__ OPENSSL_LHASH ;


 int OPENSSL_free (TYPE_1__*) ;

void OPENSSL_LH_flush(OPENSSL_LHASH *lh)
{
    unsigned int i;
    OPENSSL_LH_NODE *n, *nn;

    if (lh == ((void*)0))
        return;

    for (i = 0; i < lh->num_nodes; i++) {
        n = lh->b[i];
        while (n != ((void*)0)) {
            nn = n->next;
            OPENSSL_free(n);
            n = nn;
        }
        lh->b[i] = ((void*)0);
    }
}

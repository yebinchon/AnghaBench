
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int p; int pmax; int num_alloc_nodes; TYPE_1__** b; int num_contracts; int num_nodes; int num_contract_reallocs; int error; } ;
struct TYPE_6__ {struct TYPE_6__* next; } ;
typedef TYPE_1__ OPENSSL_LH_NODE ;
typedef TYPE_2__ OPENSSL_LHASH ;


 TYPE_1__** OPENSSL_realloc (TYPE_1__**,unsigned int) ;

__attribute__((used)) static void contract(OPENSSL_LHASH *lh)
{
    OPENSSL_LH_NODE **n, *n1, *np;

    np = lh->b[lh->p + lh->pmax - 1];
    lh->b[lh->p + lh->pmax - 1] = ((void*)0);
    if (lh->p == 0) {
        n = OPENSSL_realloc(lh->b,
                            (unsigned int)(sizeof(OPENSSL_LH_NODE *) * lh->pmax));
        if (n == ((void*)0)) {

            lh->error++;
            return;
        }
        lh->num_contract_reallocs++;
        lh->num_alloc_nodes /= 2;
        lh->pmax /= 2;
        lh->p = lh->pmax - 1;
        lh->b = n;
    } else
        lh->p--;

    lh->num_nodes--;
    lh->num_contracts++;

    n1 = lh->b[(int)lh->p];
    if (n1 == ((void*)0))
        lh->b[(int)lh->p] = np;
    else {
        while (n1->next != ((void*)0))
            n1 = n1->next;
        n1->next = np;
    }
}

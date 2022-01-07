
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int num_items; int num_nodes; int down_load; int num_delete; int num_no_delete; scalar_t__ error; } ;
struct TYPE_8__ {void* data; struct TYPE_8__* next; } ;
typedef TYPE_1__ OPENSSL_LH_NODE ;
typedef TYPE_2__ OPENSSL_LHASH ;


 int LH_LOAD_MULT ;
 int MIN_NODES ;
 int OPENSSL_free (TYPE_1__*) ;
 int contract (TYPE_2__*) ;
 TYPE_1__** getrn (TYPE_2__*,void const*,unsigned long*) ;

void *OPENSSL_LH_delete(OPENSSL_LHASH *lh, const void *data)
{
    unsigned long hash;
    OPENSSL_LH_NODE *nn, **rn;
    void *ret;

    lh->error = 0;
    rn = getrn(lh, data, &hash);

    if (*rn == ((void*)0)) {
        lh->num_no_delete++;
        return ((void*)0);
    } else {
        nn = *rn;
        *rn = nn->next;
        ret = nn->data;
        OPENSSL_free(nn);
        lh->num_delete++;
    }

    lh->num_items--;
    if ((lh->num_nodes > MIN_NODES) &&
        (lh->down_load >= (lh->num_items * LH_LOAD_MULT / lh->num_nodes)))
        contract(lh);

    return ret;
}

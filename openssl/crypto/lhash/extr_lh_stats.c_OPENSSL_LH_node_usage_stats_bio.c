
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {unsigned int num_nodes; TYPE_1__** b; } ;
struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ OPENSSL_LH_NODE ;
typedef TYPE_2__ OPENSSL_LHASH ;
typedef int BIO ;


 int BIO_printf (int *,char*,int,...) ;

void OPENSSL_LH_node_usage_stats_bio(const OPENSSL_LHASH *lh, BIO *out)
{
    OPENSSL_LH_NODE *n;
    unsigned long num;
    unsigned int i;
    unsigned long total = 0, n_used = 0;

    for (i = 0; i < lh->num_nodes; i++) {
        for (n = lh->b[i], num = 0; n != ((void*)0); n = n->next)
            num++;
        if (num != 0) {
            n_used++;
            total += num;
        }
    }
    BIO_printf(out, "%lu nodes used out of %u\n", n_used, lh->num_nodes);
    BIO_printf(out, "%lu items\n", total);
    if (n_used == 0)
        return;
    BIO_printf(out, "load %d.%02d  actual load %d.%02d\n",
               (int)(total / lh->num_nodes),
               (int)((total % lh->num_nodes) * 100 / lh->num_nodes),
               (int)(total / n_used), (int)((total % n_used) * 100 / n_used));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int num_nodes; TYPE_1__** b; } ;
struct TYPE_4__ {int data; struct TYPE_4__* next; } ;
typedef TYPE_1__ OPENSSL_LH_NODE ;
typedef int (* OPENSSL_LH_DOALL_FUNCARG ) (int ,void*) ;
typedef int (* OPENSSL_LH_DOALL_FUNC ) (int ) ;
typedef TYPE_2__ OPENSSL_LHASH ;



__attribute__((used)) static void doall_util_fn(OPENSSL_LHASH *lh, int use_arg,
                          OPENSSL_LH_DOALL_FUNC func,
                          OPENSSL_LH_DOALL_FUNCARG func_arg, void *arg)
{
    int i;
    OPENSSL_LH_NODE *a, *n;

    if (lh == ((void*)0))
        return;





    for (i = lh->num_nodes - 1; i >= 0; i--) {
        a = lh->b[i];
        while (a != ((void*)0)) {
            n = a->next;
            if (use_arg)
                func_arg(a->data, arg);
            else
                func(a->data);
            a = n;
        }
    }
}

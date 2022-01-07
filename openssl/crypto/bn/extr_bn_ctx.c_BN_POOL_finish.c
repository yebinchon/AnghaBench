
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {struct TYPE_8__* next; TYPE_2__* vals; } ;
struct TYPE_7__ {scalar_t__ d; } ;
struct TYPE_6__ {TYPE_3__* current; TYPE_3__* head; } ;
typedef TYPE_1__ BN_POOL ;
typedef TYPE_2__ BIGNUM ;


 int BN_CTX_POOL_SIZE ;
 int BN_clear_free (TYPE_2__*) ;
 int OPENSSL_free (TYPE_3__*) ;

__attribute__((used)) static void BN_POOL_finish(BN_POOL *p)
{
    unsigned int loop;
    BIGNUM *bn;

    while (p->head) {
        for (loop = 0, bn = p->head->vals; loop++ < BN_CTX_POOL_SIZE; bn++)
            if (bn->d)
                BN_clear_free(bn);
        p->current = p->head->next;
        OPENSSL_free(p->head);
        p->head = p->current;
    }
}

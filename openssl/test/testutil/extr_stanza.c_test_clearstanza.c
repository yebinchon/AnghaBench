
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int value; int key; } ;
struct TYPE_4__ {int numpairs; TYPE_2__* pairs; } ;
typedef TYPE_1__ STANZA ;
typedef TYPE_2__ PAIR ;


 int OPENSSL_free (int ) ;

void test_clearstanza(STANZA *s)
{
    PAIR *pp = s->pairs;
    int i = s->numpairs;

    for ( ; --i >= 0; pp++) {
        OPENSSL_free(pp->key);
        OPENSSL_free(pp->value);
    }
    s->numpairs = 0;
}

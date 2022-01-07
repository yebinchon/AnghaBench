
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* meth; scalar_t__ skip; int * err; int * reason; int * expected_err; int * data; int s; } ;
struct TYPE_5__ {int (* cleanup ) (TYPE_2__*) ;} ;
typedef TYPE_2__ EVP_TEST ;


 int ERR_clear_error () ;
 int OPENSSL_free (int *) ;
 int stub1 (TYPE_2__*) ;
 int test_clearstanza (int *) ;

__attribute__((used)) static void clear_test(EVP_TEST *t)
{
    test_clearstanza(&t->s);
    ERR_clear_error();
    if (t->data != ((void*)0)) {
        if (t->meth != ((void*)0))
            t->meth->cleanup(t);
        OPENSSL_free(t->data);
        t->data = ((void*)0);
    }
    OPENSSL_free(t->expected_err);
    t->expected_err = ((void*)0);
    OPENSSL_free(t->reason);
    t->reason = ((void*)0);


    t->err = ((void*)0);
    t->skip = 0;
    t->meth = ((void*)0);
}

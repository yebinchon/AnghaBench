
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int errors; int start; int test_file; int numskip; int numtests; } ;
struct TYPE_9__ {TYPE_2__ s; TYPE_1__* meth; int * err; scalar_t__ skip; } ;
struct TYPE_7__ {int (* run_test ) (TYPE_3__*) ;int name; } ;
typedef TYPE_3__ EVP_TEST ;


 int TEST_info (char*,int ,int ,int ) ;
 int TEST_openssl_errors () ;
 int check_test_error (TYPE_3__*) ;
 int stub1 (TYPE_3__*) ;

__attribute__((used)) static int run_test(EVP_TEST *t)
{
    if (t->meth == ((void*)0))
        return 1;
    t->s.numtests++;
    if (t->skip) {
        t->s.numskip++;
    } else {

        if (t->err == ((void*)0) && t->meth->run_test(t) != 1) {
            TEST_info("%s:%d %s error",
                      t->s.test_file, t->s.start, t->meth->name);
            return 0;
        }
        if (!check_test_error(t)) {
            TEST_openssl_errors();
            t->s.errors++;
        }
    }


    return 1;
}

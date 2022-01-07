
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int perslen; int pers; } ;
typedef int TEST_CTX ;
typedef int RAND_DRBG ;
typedef TYPE_1__ DRBG_SELFTEST_DATA ;


 int RAND_DRBG_instantiate (int *,int ,int ) ;
 int TEST_true (int ) ;
 int init (int *,TYPE_1__*,int *) ;

__attribute__((used)) static int instantiate(RAND_DRBG *drbg, DRBG_SELFTEST_DATA *td,
                       TEST_CTX *t)
{
    if (!TEST_true(init(drbg, td, t))
            || !TEST_true(RAND_DRBG_instantiate(drbg, td->pers, td->perslen)))
        return 0;
    return 1;
}

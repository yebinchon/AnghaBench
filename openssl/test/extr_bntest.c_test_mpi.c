
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int scratch ;
struct TYPE_3__ {int mpi_len; int mpi; int base10; } ;
typedef TYPE_1__ MPITEST ;
typedef int BIGNUM ;


 int BN_asc2bn (int **,int ) ;
 size_t BN_bn2mpi (int *,int *) ;
 int BN_free (int *) ;
 int * BN_mpi2bn (int *,size_t,int *) ;
 int * BN_new () ;
 int TEST_BN_eq (int *,int *) ;
 int TEST_mem_eq (int ,int ,int *,size_t) ;
 int TEST_ptr (int *) ;
 int TEST_size_t_eq (size_t,size_t) ;
 int TEST_size_t_le (size_t,int) ;
 int TEST_true (int ) ;
 TYPE_1__* kMPITests ;

__attribute__((used)) static int test_mpi(int i)
{
    uint8_t scratch[8];
    const MPITEST *test = &kMPITests[i];
    size_t mpi_len, mpi_len2;
    BIGNUM *bn = ((void*)0);
    BIGNUM *bn2 = ((void*)0);
    int st = 0;

    if (!TEST_ptr(bn = BN_new())
            || !TEST_true(BN_asc2bn(&bn, test->base10)))
        goto err;
    mpi_len = BN_bn2mpi(bn, ((void*)0));
    if (!TEST_size_t_le(mpi_len, sizeof(scratch)))
        goto err;

    if (!TEST_size_t_eq(mpi_len2 = BN_bn2mpi(bn, scratch), mpi_len)
            || !TEST_mem_eq(test->mpi, test->mpi_len, scratch, mpi_len))
        goto err;

    if (!TEST_ptr(bn2 = BN_mpi2bn(scratch, mpi_len, ((void*)0))))
        goto err;

    if (!TEST_BN_eq(bn, bn2)) {
        BN_free(bn2);
        goto err;
    }
    BN_free(bn2);

    st = 1;
 err:
    BN_free(bn);
    return st;
}

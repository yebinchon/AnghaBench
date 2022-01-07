
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rand_buf ;
typedef int RAND_DRBG ;


 int * RAND_DRBG_get0_master () ;
 int RAND_DRBG_uninstantiate (int *) ;
 int RAND_seed (unsigned char*,size_t) ;
 int RAND_status () ;
 int TEST_int_eq (int ,int) ;
 int TEST_ptr (int *) ;
 int TEST_true (int ) ;
 int disable_crngt (int *) ;
 int memset (unsigned char*,int,int) ;
 size_t rand_drbg_seedlen (int *) ;

__attribute__((used)) static int test_rand_seed(void)
{
    RAND_DRBG *master = ((void*)0);
    unsigned char rand_buf[256];
    size_t rand_buflen;
    size_t required_seed_buflen = 0;

    if (!TEST_ptr(master = RAND_DRBG_get0_master())
        || !TEST_true(disable_crngt(master)))
        return 0;





    memset(rand_buf, 0xCD, sizeof(rand_buf));

    for ( rand_buflen = 256 ; rand_buflen > 0 ; --rand_buflen ) {
        RAND_DRBG_uninstantiate(master);
        RAND_seed(rand_buf, rand_buflen);

        if (!TEST_int_eq(RAND_status(),
                         (rand_buflen >= required_seed_buflen)))
            return 0;
    }

    return 1;
}

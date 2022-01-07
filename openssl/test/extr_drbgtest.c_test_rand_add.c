
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rand_buf ;


 int RAND_add (unsigned char*,size_t,double) ;
 int RAND_seed (unsigned char*,int) ;
 int RAND_status () ;
 int TEST_true (int ) ;
 int memset (unsigned char*,int,int) ;

__attribute__((used)) static int test_rand_add(void)
{
    unsigned char rand_buf[256];
    size_t rand_buflen;

    memset(rand_buf, 0xCD, sizeof(rand_buf));


    RAND_seed(rand_buf, sizeof(rand_buf));
    if (!TEST_true(RAND_status()))
        return 0;

    for ( rand_buflen = 256 ; rand_buflen > 0 ; --rand_buflen ) {
        RAND_add(rand_buf, rand_buflen, 0.0);
        if (!TEST_true(RAND_status()))
            return 0;
    }

    return 1;
}

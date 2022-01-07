
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
typedef int buf ;
typedef int RAND_DRBG ;


 int * RAND_DRBG_get0_private () ;
 int * RAND_DRBG_get0_public () ;
 int RAND_DRBG_set_reseed_time_interval (int *,int) ;
 scalar_t__ RAND_bytes (unsigned char*,int) ;
 scalar_t__ RAND_priv_bytes (unsigned char*,int) ;
 int TEST_ptr (int *) ;
 scalar_t__ multi_thread_rand_bytes_succeeded ;
 scalar_t__ multi_thread_rand_priv_bytes_succeeded ;
 int time (int *) ;

__attribute__((used)) static void run_multi_thread_test(void)
{
    unsigned char buf[256];
    time_t start = time(((void*)0));
    RAND_DRBG *public = ((void*)0), *private = ((void*)0);

    if (!TEST_ptr(public = RAND_DRBG_get0_public())
            || !TEST_ptr(private = RAND_DRBG_get0_private())) {
        multi_thread_rand_bytes_succeeded = 0;
        return;
    }
    RAND_DRBG_set_reseed_time_interval(private, 1);
    RAND_DRBG_set_reseed_time_interval(public, 1);

    do {
        if (RAND_bytes(buf, sizeof(buf)) <= 0)
            multi_thread_rand_bytes_succeeded = 0;
        if (RAND_priv_bytes(buf, sizeof(buf)) <= 0)
            multi_thread_rand_priv_bytes_succeeded = 0;
    }
    while(time(((void*)0)) - start < 5);
}

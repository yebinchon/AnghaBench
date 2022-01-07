
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASYNC_is_capable () ;
 int CRYPTO_MEM_CHECK_ON ;
 int CRYPTO_mem_ctrl (int ) ;
 int CRYPTO_set_mem_debug (int) ;
 int fprintf (int ,char*) ;
 int printf (char*) ;
 int stderr ;
 int test_ASYNC_WAIT_CTX_get_all_fds () ;
 int test_ASYNC_block_pause () ;
 int test_ASYNC_callback_status () ;
 int test_ASYNC_get_current_job () ;
 int test_ASYNC_init_thread () ;
 int test_ASYNC_start_job () ;

int main(int argc, char **argv)
{
    if (!ASYNC_is_capable()) {
        fprintf(stderr,
                "OpenSSL build is not ASYNC capable - skipping async tests\n");
    } else {
        CRYPTO_set_mem_debug(1);
        CRYPTO_mem_ctrl(CRYPTO_MEM_CHECK_ON);

        if ( !test_ASYNC_init_thread()
                || !test_ASYNC_callback_status()
                || !test_ASYNC_start_job()
                || !test_ASYNC_get_current_job()
                || !test_ASYNC_WAIT_CTX_get_all_fds()
                || !test_ASYNC_block_pause()) {
            return 1;
        }
    }
    printf("PASS\n");
    return 0;
}

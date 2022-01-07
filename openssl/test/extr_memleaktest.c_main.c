
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CRYPTO_MEM_CHECK_ON ;
 int CRYPTO_mem_ctrl (int ) ;
 int CRYPTO_mem_leaks_fp (int ) ;
 int CRYPTO_set_mem_debug (int) ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int OPENSSL_free (char*) ;
 char* OPENSSL_malloc (int) ;
 scalar_t__ TEST_int_eq (int ,int) ;
 int TEST_int_ne (int,int) ;
 int TEST_ptr (char*) ;
 char* getenv (char*) ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;

int main(int argc, char *argv[])
{

    char *p;
    char *lost;
    int noleak;

    p = getenv("OPENSSL_DEBUG_MEMORY");
    if (p != ((void*)0) && strcmp(p, "on") == 0)
        CRYPTO_set_mem_debug(1);
    CRYPTO_mem_ctrl(CRYPTO_MEM_CHECK_ON);

    lost = OPENSSL_malloc(3);
    if (!TEST_ptr(lost))
        return EXIT_FAILURE;

    if (argv[1] && strcmp(argv[1], "freeit") == 0) {
        OPENSSL_free(lost);
        lost = ((void*)0);
    }

    noleak = CRYPTO_mem_leaks_fp(stderr);

    if (!TEST_int_ne(noleak, -1))
        return EXIT_FAILURE;

    return TEST_int_eq(lost != ((void*)0), noleak == 0) ? EXIT_SUCCESS : EXIT_FAILURE;



}

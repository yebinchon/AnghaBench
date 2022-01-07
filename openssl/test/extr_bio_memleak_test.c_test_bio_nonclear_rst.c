
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;


 int BIO_FLAGS_NONCLEAR_RST ;
 int BIO_clear_flags (int *,int ) ;
 int BIO_free (int *) ;
 int * BIO_new (int ) ;
 int BIO_puts (int *,char*) ;
 int BIO_read (int *,char*,int) ;
 int BIO_reset (int *) ;
 int BIO_s_mem () ;
 int BIO_set_flags (int *,int ) ;
 int TEST_int_eq (int ,int) ;
 int TEST_int_gt (int ,int ) ;
 int TEST_int_lt (int ,int) ;
 int TEST_mem_eq (char*,int,char*,int) ;
 int TEST_ptr (int *) ;

__attribute__((used)) static int test_bio_nonclear_rst(void)
{
    int ok = 0;
    BIO *bio = ((void*)0);
    char data[16];

    bio = BIO_new(BIO_s_mem());
    if (!TEST_ptr(bio))
        goto finish;
    if (!TEST_int_eq(BIO_puts(bio, "Hello World\n"), 12))
        goto finish;

    BIO_set_flags(bio, BIO_FLAGS_NONCLEAR_RST);

    if (!TEST_int_eq(BIO_read(bio, data, 16), 12))
        goto finish;
    if (!TEST_mem_eq(data, 12, "Hello World\n", 12))
        goto finish;
    if (!TEST_int_gt(BIO_reset(bio), 0))
        goto finish;

    if (!TEST_int_eq(BIO_read(bio, data, 16), 12))
        goto finish;
    if (!TEST_mem_eq(data, 12, "Hello World\n", 12))
        goto finish;

    BIO_clear_flags(bio, BIO_FLAGS_NONCLEAR_RST);
    if (!TEST_int_gt(BIO_reset(bio), 0))
        goto finish;

    if (!TEST_int_lt(BIO_read(bio, data, 16), 1))
        goto finish;

    ok = 1;

finish:
    BIO_free(bio);
    return ok;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BUF_MEM ;
typedef int BIO ;


 int BIO_free (int *) ;
 int BIO_get_mem_ptr (int *,int **) ;
 int * BIO_new_mem_buf (char*,int) ;
 int BIO_read (int *,char*,int) ;
 int BIO_reset (int *) ;
 int BIO_write (int *,char*,int) ;
 int TEST_int_eq (int ,int) ;
 int TEST_int_gt (int ,int ) ;
 int TEST_int_lt (int ,int ) ;
 int TEST_mem_eq (char*,int,char*,int) ;
 int TEST_ptr (int *) ;

__attribute__((used)) static int test_bio_new_mem_buf(void)
{
    int ok = 0;
    BIO *bio;
    BUF_MEM *bufmem;
    char data[16];

    bio = BIO_new_mem_buf("Hello World\n", 12);
    if (!TEST_ptr(bio))
        goto finish;
    if (!TEST_int_eq(BIO_read(bio, data, 5), 5))
        goto finish;
    if (!TEST_mem_eq(data, 5, "Hello", 5))
        goto finish;
    if (!TEST_int_gt(BIO_get_mem_ptr(bio, &bufmem), 0))
        goto finish;
    if (!TEST_int_lt(BIO_write(bio, "test", 4), 0))
        goto finish;
    if (!TEST_int_eq(BIO_read(bio, data, 16), 7))
        goto finish;
    if (!TEST_mem_eq(data, 7, " World\n", 7))
        goto finish;
    if (!TEST_int_gt(BIO_reset(bio), 0))
        goto finish;
    if (!TEST_int_eq(BIO_read(bio, data, 16), 12))
        goto finish;
    if (!TEST_mem_eq(data, 12, "Hello World\n", 12))
        goto finish;
    ok = 1;

finish:
    BIO_free(bio);
    return ok;
}

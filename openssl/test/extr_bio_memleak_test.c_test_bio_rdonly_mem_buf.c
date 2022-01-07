
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BUF_MEM ;
typedef int BIO ;


 int BIO_CLOSE ;
 int BIO_FLAGS_MEM_RDONLY ;
 int BIO_NOCLOSE ;
 int BIO_free (int *) ;
 int BIO_get_mem_ptr (int *,int **) ;
 int * BIO_new (int ) ;
 int * BIO_new_mem_buf (char*,int) ;
 int BIO_read (int *,char*,int) ;
 int BIO_reset (int *) ;
 int BIO_s_mem () ;
 int BIO_set_close (int *,int ) ;
 int BIO_set_flags (int *,int ) ;
 int BIO_set_mem_buf (int *,int *,int ) ;
 int TEST_int_eq (int ,int) ;
 int TEST_int_gt (int ,int ) ;
 int TEST_mem_eq (char*,int,char*,int) ;
 int TEST_ptr (int *) ;

__attribute__((used)) static int test_bio_rdonly_mem_buf(void)
{
    int ok = 0;
    BIO *bio, *bio2 = ((void*)0);
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
    (void)BIO_set_close(bio, BIO_NOCLOSE);

    bio2 = BIO_new(BIO_s_mem());
    if (!TEST_ptr(bio2))
        goto finish;
    BIO_set_mem_buf(bio2, bufmem, BIO_CLOSE);
    BIO_set_flags(bio2, BIO_FLAGS_MEM_RDONLY);

    if (!TEST_int_eq(BIO_read(bio2, data, 16), 7))
        goto finish;
    if (!TEST_mem_eq(data, 7, " World\n", 7))
        goto finish;
    if (!TEST_int_gt(BIO_reset(bio2), 0))
        goto finish;
    if (!TEST_int_eq(BIO_read(bio2, data, 16), 7))
        goto finish;
    if (!TEST_mem_eq(data, 7, " World\n", 7))
        goto finish;
    ok = 1;

finish:
    BIO_free(bio);
    BIO_free(bio2);
    return ok;
}

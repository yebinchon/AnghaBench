
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int length; int data; } ;
typedef TYPE_1__ BUF_MEM ;
typedef TYPE_1__ BIO ;


 int BIO_NOCLOSE ;
 int BIO_free (TYPE_1__*) ;
 int BIO_get_mem_ptr (TYPE_1__*,TYPE_1__**) ;
 TYPE_1__* BIO_new (int ) ;
 int BIO_puts (TYPE_1__*,char*) ;
 int BIO_s_mem () ;
 int BIO_set_close (TYPE_1__*,int ) ;
 int BUF_MEM_free (TYPE_1__*) ;
 int TEST_int_eq (int ,int) ;
 int TEST_int_gt (int ,int ) ;
 int TEST_mem_eq (int ,int ,char*,int) ;
 int TEST_ptr (TYPE_1__*) ;

__attribute__((used)) static int test_bio_get_mem(void)
{
    int ok = 0;
    BIO *bio = ((void*)0);
    BUF_MEM *bufmem = ((void*)0);

    bio = BIO_new(BIO_s_mem());
    if (!TEST_ptr(bio))
        goto finish;
    if (!TEST_int_eq(BIO_puts(bio, "Hello World\n"), 12))
        goto finish;
    BIO_get_mem_ptr(bio, &bufmem);
    if (!TEST_ptr(bufmem))
        goto finish;
    if (!TEST_int_gt(BIO_set_close(bio, BIO_NOCLOSE), 0))
        goto finish;
    BIO_free(bio);
    bio = ((void*)0);
    if (!TEST_mem_eq(bufmem->data, bufmem->length, "Hello World\n", 12))
        goto finish;
    ok = 1;

finish:
    BIO_free(bio);
    BUF_MEM_free(bufmem);
    return ok;
}

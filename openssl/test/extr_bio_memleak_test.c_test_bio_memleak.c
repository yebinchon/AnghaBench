
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int str ;
typedef int buf ;
struct TYPE_3__ {int length; char* data; int max; } ;
typedef TYPE_1__ BUF_MEM ;
typedef int BIO ;


 int BIO_FLAGS_MEM_RDONLY ;
 int BIO_NOCLOSE ;
 int BIO_free (int *) ;
 int * BIO_new (int ) ;
 int BIO_read (int *,char*,int) ;
 int BIO_s_mem () ;
 int BIO_set_flags (int *,int ) ;
 int BIO_set_mem_buf (int *,TYPE_1__*,int ) ;
 int TEST_int_eq (int ,int) ;
 int TEST_mem_eq (char*,int,char const*,int) ;
 int TEST_ptr (int *) ;

__attribute__((used)) static int test_bio_memleak(void)
{
    int ok = 0;
    BIO *bio;
    BUF_MEM bufmem;
    static const char str[] = "BIO test\n";
    char buf[100];

    bio = BIO_new(BIO_s_mem());
    if (!TEST_ptr(bio))
        goto finish;
    bufmem.length = sizeof(str);
    bufmem.data = (char *) str;
    bufmem.max = bufmem.length;
    BIO_set_mem_buf(bio, &bufmem, BIO_NOCLOSE);
    BIO_set_flags(bio, BIO_FLAGS_MEM_RDONLY);
    if (!TEST_int_eq(BIO_read(bio, buf, sizeof(buf)), sizeof(str)))
        goto finish;
    if (!TEST_mem_eq(buf, sizeof(str), str, sizeof(str)))
        goto finish;
    ok = 1;

finish:
    BIO_free(bio);
    return ok;
}

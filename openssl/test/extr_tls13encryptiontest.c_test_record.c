
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int plaintext; int ciphertext; } ;
struct TYPE_5__ {int length; int data; } ;
typedef TYPE_1__ SSL3_RECORD ;
typedef TYPE_2__ RECORD_DATA ;


 int OPENSSL_free (unsigned char*) ;
 int TEST_info (char*) ;
 int TEST_mem_eq (int ,int ,unsigned char*,size_t) ;
 int TEST_ptr (unsigned char*) ;
 unsigned char* multihexstr2buf (int ,size_t*) ;

__attribute__((used)) static int test_record(SSL3_RECORD *rec, RECORD_DATA *recd, int enc)
{
    int ret = 0;
    unsigned char *refd;
    size_t refdatalen;

    if (enc)
        refd = multihexstr2buf(recd->ciphertext, &refdatalen);
    else
        refd = multihexstr2buf(recd->plaintext, &refdatalen);

    if (!TEST_ptr(refd)) {
        TEST_info("Failed to get reference data");
        goto err;
    }

    if (!TEST_mem_eq(rec->data, rec->length, refd, refdatalen))
        goto err;

    ret = 1;

 err:
    OPENSSL_free(refd);
    return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int digest; int data_len; int data; } ;


 int EVP_sha1 () ;
 int HMAC (int ,int *,int ,int ,int ,int *,int *) ;
 int SHA_DIGEST_LENGTH ;
 int TEST_str_eq (char*,int ) ;
 char* pt (int ,int ) ;
 TYPE_1__* test ;

__attribute__((used)) static int test_hmac_single_shot(void)
{
    char *p;


    p = pt(HMAC(EVP_sha1(), ((void*)0), 0, test[4].data, test[4].data_len,
                ((void*)0), ((void*)0)), SHA_DIGEST_LENGTH);
    if (!TEST_str_eq(p, test[4].digest))
        return 0;

    return 1;
}

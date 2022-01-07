
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int digest; int data_len; int data; int key_len; int key; } ;


 int EVP_md5 () ;
 int HMAC (int ,int ,int ,int ,int ,int *,int *) ;
 int MD5_DIGEST_LENGTH ;
 int TEST_str_eq (char*,int ) ;
 int ebcdic2ascii (int ,int ,int ) ;
 char* pt (int ,int ) ;
 TYPE_1__* test ;

__attribute__((used)) static int test_hmac_md5(int idx)
{
    char *p;







    p = pt(HMAC(EVP_md5(),
                test[idx].key, test[idx].key_len,
                test[idx].data, test[idx].data_len, ((void*)0), ((void*)0)),
                MD5_DIGEST_LENGTH);

    if (!TEST_str_eq(p, test[idx].digest))
      return 0;

    return 1;
}

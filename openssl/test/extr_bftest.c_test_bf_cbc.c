
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int iv ;
typedef int cbc_out ;
typedef int cbc_in ;
typedef int BF_LONG ;
typedef int BF_KEY ;


 int BF_DECRYPT ;
 int BF_ENCRYPT ;
 int BF_cbc_encrypt (unsigned char*,unsigned char*,int,int *,unsigned char*,int ) ;
 int BF_set_key (int *,int,int ) ;
 int TEST_mem_eq (unsigned char*,int,scalar_t__,int) ;
 scalar_t__ cbc_data ;
 int cbc_iv ;
 int cbc_key ;
 scalar_t__ cbc_ok ;
 int memcpy (unsigned char*,int ,int) ;
 int memset (unsigned char*,int ,int) ;
 int strlen (scalar_t__) ;

__attribute__((used)) static int test_bf_cbc(void)
{
    unsigned char cbc_in[40], cbc_out[40], iv[8];
    int ret = 1;
    BF_KEY key;
    BF_LONG len;

    len = strlen(cbc_data) + 1;

    BF_set_key(&key, 16, cbc_key);
    memset(cbc_in, 0, sizeof(cbc_in));
    memset(cbc_out, 0, sizeof(cbc_out));
    memcpy(iv, cbc_iv, sizeof(iv));
    BF_cbc_encrypt((unsigned char *)cbc_data, cbc_out, len,
                   &key, iv, BF_ENCRYPT);
    if (!TEST_mem_eq(cbc_out, 32, cbc_ok, 32))
        ret = 0;

    memcpy(iv, cbc_iv, 8);
    BF_cbc_encrypt(cbc_out, cbc_in, len, &key, iv, BF_DECRYPT);
    if (!TEST_mem_eq(cbc_in, len, cbc_data, strlen(cbc_data) + 1))
        ret = 0;

    return ret;
}

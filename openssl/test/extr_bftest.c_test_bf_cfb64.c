
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BF_LONG ;
typedef int BF_KEY ;


 int BF_DECRYPT ;
 int BF_ENCRYPT ;
 int BF_cfb64_encrypt (unsigned char*,unsigned char*,int,int *,unsigned char*,int*,int ) ;
 int BF_set_key (int *,int,int ) ;
 int TEST_mem_eq (unsigned char*,int,int *,int) ;
 int * cbc_data ;
 int cbc_iv ;
 int cbc_key ;
 int * cfb64_ok ;
 int memcpy (unsigned char*,int ,int) ;
 int memset (unsigned char*,int ,int) ;
 int strlen (int *) ;

__attribute__((used)) static int test_bf_cfb64(void)
{
    unsigned char cbc_in[40], cbc_out[40], iv[8];
    int n, ret = 1;
    BF_KEY key;
    BF_LONG len;

    len = strlen(cbc_data) + 1;

    BF_set_key(&key, 16, cbc_key);
    memset(cbc_in, 0, 40);
    memset(cbc_out, 0, 40);
    memcpy(iv, cbc_iv, 8);
    n = 0;
    BF_cfb64_encrypt((unsigned char *)cbc_data, cbc_out, (long)13,
                     &key, iv, &n, BF_ENCRYPT);
    BF_cfb64_encrypt((unsigned char *)&(cbc_data[13]), &(cbc_out[13]),
                     len - 13, &key, iv, &n, BF_ENCRYPT);
    if (!TEST_mem_eq(cbc_out, (int)len, cfb64_ok, (int)len))
        ret = 0;

    n = 0;
    memcpy(iv, cbc_iv, 8);
    BF_cfb64_encrypt(cbc_out, cbc_in, 17, &key, iv, &n, BF_DECRYPT);
    BF_cfb64_encrypt(&(cbc_out[17]), &(cbc_in[17]), len - 17,
                     &key, iv, &n, BF_DECRYPT);
    if (!TEST_mem_eq(cbc_in, (int)len, cbc_data, (int)len))
        ret = 0;

    return ret;
}

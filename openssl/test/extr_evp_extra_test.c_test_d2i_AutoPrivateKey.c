
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char* kder; size_t size; int evptype; } ;
typedef int EVP_PKEY ;
typedef TYPE_1__ APK_DATA ;


 int EVP_PKEY_free (int *) ;
 int EVP_PKEY_id (int *) ;
 int TEST_int_eq (int ,int) ;
 int TEST_ptr (int *) ;
 int TEST_ptr_eq (unsigned char const*,unsigned char const*) ;
 int * d2i_AutoPrivateKey (int *,unsigned char const**,size_t) ;
 TYPE_1__* keydata ;

__attribute__((used)) static int test_d2i_AutoPrivateKey(int i)
{
    int ret = 0;
    const unsigned char *p;
    EVP_PKEY *pkey = ((void*)0);
    const APK_DATA *ak = &keydata[i];
    const unsigned char *input = ak->kder;
    size_t input_len = ak->size;
    int expected_id = ak->evptype;

    p = input;
    if (!TEST_ptr(pkey = d2i_AutoPrivateKey(((void*)0), &p, input_len))
            || !TEST_ptr_eq(p, input + input_len)
            || !TEST_int_eq(EVP_PKEY_id(pkey), expected_id))
        goto done;

    ret = 1;

 done:
    EVP_PKEY_free(pkey);
    return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int buf ;
struct TYPE_2__ {int type; int * priv; int * pub; } ;
typedef int EVP_PKEY ;


 int EVP_PKEY_free (int *) ;
 int EVP_PKEY_get_raw_private_key (int *,unsigned char*,size_t*) ;
 int EVP_PKEY_get_raw_public_key (int *,unsigned char*,size_t*) ;
 int * EVP_PKEY_new_raw_private_key (int ,int *,unsigned char*,size_t) ;
 int * EVP_PKEY_new_raw_public_key (int ,int *,unsigned char*,size_t) ;
 int TEST_mem_eq (unsigned char*,size_t,unsigned char*,size_t) ;
 int TEST_ptr (int *) ;
 int TEST_true (int) ;
 TYPE_1__* keys ;
 int memset (unsigned char*,int ,int) ;
 size_t strlen (int *) ;

__attribute__((used)) static int test_set_get_raw_keys_int(int tst, int pub)
{
    int ret = 0;
    unsigned char buf[80];
    unsigned char *in;
    size_t inlen, len = 0;
    EVP_PKEY *pkey;


    if (keys[tst].pub == ((void*)0))
        return 1;

    memset(buf, 0, sizeof(buf));

    if (pub) {
        inlen = strlen(keys[tst].pub);
        in = (unsigned char *)keys[tst].pub;
        pkey = EVP_PKEY_new_raw_public_key(keys[tst].type,
                                           ((void*)0),
                                           in,
                                           inlen);
    } else {
        inlen = strlen(keys[tst].priv);
        in = (unsigned char *)keys[tst].priv;
        pkey = EVP_PKEY_new_raw_private_key(keys[tst].type,
                                            ((void*)0),
                                            in,
                                            inlen);
    }

    if (!TEST_ptr(pkey)
            || (!pub && !TEST_true(EVP_PKEY_get_raw_private_key(pkey, ((void*)0), &len)))
            || (pub && !TEST_true(EVP_PKEY_get_raw_public_key(pkey, ((void*)0), &len)))
            || !TEST_true(len == inlen)
            || (!pub && !TEST_true(EVP_PKEY_get_raw_private_key(pkey, buf, &len)))
            || (pub && !TEST_true(EVP_PKEY_get_raw_public_key(pkey, buf, &len)))
            || !TEST_mem_eq(in, inlen, buf, len))
        goto done;

    ret = 1;
 done:
    EVP_PKEY_free(pkey);
    return ret;
}

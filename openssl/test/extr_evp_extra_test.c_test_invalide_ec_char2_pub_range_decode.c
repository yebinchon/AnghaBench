
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ valid; int len; int der; } ;
typedef int EC_KEY ;
typedef int BIO ;


 int BIO_free (int *) ;
 int * BIO_new_mem_buf (int ,int ) ;
 int EC_KEY_free (int *) ;
 scalar_t__ TEST_ptr (int *) ;
 scalar_t__ TEST_ptr_null (int *) ;
 int * d2i_EC_PUBKEY_bio (int *,int *) ;
 TYPE_1__* ec_der_pub_keys ;

__attribute__((used)) static int test_invalide_ec_char2_pub_range_decode(int id)
{
    int ret = 0;
    BIO *bio = ((void*)0);
    EC_KEY *eckey = ((void*)0);

    if (!TEST_ptr(bio = BIO_new_mem_buf(ec_der_pub_keys[id].der,
                                        ec_der_pub_keys[id].len)))
        goto err;
    eckey = d2i_EC_PUBKEY_bio(bio, ((void*)0));
    ret = (ec_der_pub_keys[id].valid && TEST_ptr(eckey))
          || TEST_ptr_null(eckey);
err:
    EC_KEY_free(eckey);
    BIO_free(bio);
    return ret;
}

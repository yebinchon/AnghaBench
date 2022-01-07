
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_CIPHER ;


 int EVP_CIPHER_impl_ctx_size (int ) ;
 int EVP_CIPHER_meth_free (int const*) ;
 int * EVP_CIPHER_meth_new (int ,int,int) ;
 int EVP_CIPHER_meth_set_do_cipher (int const*,int ) ;
 int EVP_CIPHER_meth_set_flags (int const*,int) ;
 int EVP_CIPHER_meth_set_impl_ctx_size (int const*,int ) ;
 int EVP_CIPHER_meth_set_init (int const*,int ) ;
 int EVP_CIPHER_meth_set_iv_length (int const*,int) ;
 int EVP_CIPH_CBC_MODE ;
 int EVP_CIPH_FLAG_DEFAULT_ASN1 ;
 int EVP_aes_128_cbc () ;
 int NID_aes_128_cbc ;
 int const* _hidden_aes_128_cbc ;
 int ossltest_aes128_cbc_cipher ;
 int ossltest_aes128_init_key ;

__attribute__((used)) static const EVP_CIPHER *ossltest_aes_128_cbc(void)
{
    if (_hidden_aes_128_cbc == ((void*)0)
        && ((_hidden_aes_128_cbc = EVP_CIPHER_meth_new(NID_aes_128_cbc,
                                                       16 ,
                                                       16 )) == ((void*)0)
            || !EVP_CIPHER_meth_set_iv_length(_hidden_aes_128_cbc,16)
            || !EVP_CIPHER_meth_set_flags(_hidden_aes_128_cbc,
                                          EVP_CIPH_FLAG_DEFAULT_ASN1
                                          | EVP_CIPH_CBC_MODE)
            || !EVP_CIPHER_meth_set_init(_hidden_aes_128_cbc,
                                         ossltest_aes128_init_key)
            || !EVP_CIPHER_meth_set_do_cipher(_hidden_aes_128_cbc,
                                              ossltest_aes128_cbc_cipher)
            || !EVP_CIPHER_meth_set_impl_ctx_size(_hidden_aes_128_cbc,
                                                  EVP_CIPHER_impl_ctx_size(EVP_aes_128_cbc())))) {
        EVP_CIPHER_meth_free(_hidden_aes_128_cbc);
        _hidden_aes_128_cbc = ((void*)0);
    }
    return _hidden_aes_128_cbc;
}

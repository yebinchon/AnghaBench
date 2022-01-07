
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_CIPHER ;


 int AES_GCM_FLAGS ;
 int EVP_CIPHER_impl_ctx_size (int ) ;
 int EVP_CIPHER_meth_free (int const*) ;
 int * EVP_CIPHER_meth_new (int ,int,int) ;
 int EVP_CIPHER_meth_set_ctrl (int const*,int ) ;
 int EVP_CIPHER_meth_set_do_cipher (int const*,int ) ;
 int EVP_CIPHER_meth_set_flags (int const*,int ) ;
 int EVP_CIPHER_meth_set_impl_ctx_size (int const*,int ) ;
 int EVP_CIPHER_meth_set_init (int const*,int ) ;
 int EVP_CIPHER_meth_set_iv_length (int const*,int) ;
 int EVP_aes_128_gcm () ;
 int NID_aes_128_gcm ;
 int const* _hidden_aes_128_gcm ;
 int ossltest_aes128_gcm_cipher ;
 int ossltest_aes128_gcm_ctrl ;
 int ossltest_aes128_gcm_init_key ;

__attribute__((used)) static const EVP_CIPHER *ossltest_aes_128_gcm(void)
{
    if (_hidden_aes_128_gcm == ((void*)0)
        && ((_hidden_aes_128_gcm = EVP_CIPHER_meth_new(NID_aes_128_gcm,
                                                       1 ,
                                                       16 )) == ((void*)0)
            || !EVP_CIPHER_meth_set_iv_length(_hidden_aes_128_gcm,12)
            || !EVP_CIPHER_meth_set_flags(_hidden_aes_128_gcm, AES_GCM_FLAGS)
            || !EVP_CIPHER_meth_set_init(_hidden_aes_128_gcm,
                                         ossltest_aes128_gcm_init_key)
            || !EVP_CIPHER_meth_set_do_cipher(_hidden_aes_128_gcm,
                                              ossltest_aes128_gcm_cipher)
            || !EVP_CIPHER_meth_set_ctrl(_hidden_aes_128_gcm,
                                              ossltest_aes128_gcm_ctrl)
            || !EVP_CIPHER_meth_set_impl_ctx_size(_hidden_aes_128_gcm,
                              EVP_CIPHER_impl_ctx_size(EVP_aes_128_gcm())))) {
        EVP_CIPHER_meth_free(_hidden_aes_128_gcm);
        _hidden_aes_128_gcm = ((void*)0);
    }
    return _hidden_aes_128_gcm;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const* _hidden; int key_size; } ;
typedef TYPE_1__ cbc_handles ;
typedef int afalg_ctx ;
typedef int EVP_CIPHER ;


 int AES_BLOCK_SIZE ;
 int AES_IV_LEN ;
 int EVP_CIPHER_meth_free (int const*) ;
 int const* EVP_CIPHER_meth_new (int,int ,int ) ;
 int EVP_CIPHER_meth_set_cleanup (int const*,int ) ;
 int EVP_CIPHER_meth_set_do_cipher (int const*,int ) ;
 int EVP_CIPHER_meth_set_flags (int const*,int) ;
 int EVP_CIPHER_meth_set_impl_ctx_size (int const*,int) ;
 int EVP_CIPHER_meth_set_init (int const*,int ) ;
 int EVP_CIPHER_meth_set_iv_length (int const*,int ) ;
 int EVP_CIPH_CBC_MODE ;
 int EVP_CIPH_FLAG_DEFAULT_ASN1 ;
 int afalg_cipher_cleanup ;
 int afalg_cipher_init ;
 int afalg_do_cipher ;
 TYPE_1__* get_cipher_handle (int) ;

__attribute__((used)) static const EVP_CIPHER *afalg_aes_cbc(int nid)
{
    cbc_handles *cipher_handle = get_cipher_handle(nid);
    if (cipher_handle->_hidden == ((void*)0)
        && ((cipher_handle->_hidden =
         EVP_CIPHER_meth_new(nid,
                             AES_BLOCK_SIZE,
                             cipher_handle->key_size)) == ((void*)0)
        || !EVP_CIPHER_meth_set_iv_length(cipher_handle->_hidden,
                                          AES_IV_LEN)
        || !EVP_CIPHER_meth_set_flags(cipher_handle->_hidden,
                                      EVP_CIPH_CBC_MODE |
                                      EVP_CIPH_FLAG_DEFAULT_ASN1)
        || !EVP_CIPHER_meth_set_init(cipher_handle->_hidden,
                                     afalg_cipher_init)
        || !EVP_CIPHER_meth_set_do_cipher(cipher_handle->_hidden,
                                          afalg_do_cipher)
        || !EVP_CIPHER_meth_set_cleanup(cipher_handle->_hidden,
                                        afalg_cipher_cleanup)
        || !EVP_CIPHER_meth_set_impl_ctx_size(cipher_handle->_hidden,
                                              sizeof(afalg_ctx)))) {
        EVP_CIPHER_meth_free(cipher_handle->_hidden);
        cipher_handle->_hidden= ((void*)0);
    }
    return cipher_handle->_hidden;
}

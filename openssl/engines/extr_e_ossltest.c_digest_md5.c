
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MD5_CTX ;
typedef int EVP_MD ;


 int EVP_MD_meth_free (int *) ;
 int * EVP_MD_meth_new (int ,int ) ;
 int EVP_MD_meth_set_app_datasize (int *,int) ;
 int EVP_MD_meth_set_final (int *,int ) ;
 int EVP_MD_meth_set_flags (int *,int ) ;
 int EVP_MD_meth_set_init (int *,int ) ;
 int EVP_MD_meth_set_input_blocksize (int *,int ) ;
 int EVP_MD_meth_set_result_size (int *,int ) ;
 int EVP_MD_meth_set_update (int *,int ) ;
 int MD5_CBLOCK ;
 int MD5_DIGEST_LENGTH ;
 int NID_md5 ;
 int NID_md5WithRSAEncryption ;
 int const* _hidden_md5_md ;
 int digest_md5_final ;
 int digest_md5_init ;
 int digest_md5_update ;

__attribute__((used)) static const EVP_MD *digest_md5(void)
{
    if (_hidden_md5_md == ((void*)0)) {
        EVP_MD *md;

        if ((md = EVP_MD_meth_new(NID_md5, NID_md5WithRSAEncryption)) == ((void*)0)
            || !EVP_MD_meth_set_result_size(md, MD5_DIGEST_LENGTH)
            || !EVP_MD_meth_set_input_blocksize(md, MD5_CBLOCK)
            || !EVP_MD_meth_set_app_datasize(md,
                                             sizeof(EVP_MD *) + sizeof(MD5_CTX))
            || !EVP_MD_meth_set_flags(md, 0)
            || !EVP_MD_meth_set_init(md, digest_md5_init)
            || !EVP_MD_meth_set_update(md, digest_md5_update)
            || !EVP_MD_meth_set_final(md, digest_md5_final)) {
            EVP_MD_meth_free(md);
            md = ((void*)0);
        }
        _hidden_md5_md = md;
    }
    return _hidden_md5_md;
}

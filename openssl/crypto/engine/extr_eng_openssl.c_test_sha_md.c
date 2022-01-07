
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SHA_CTX ;
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
 int NID_sha1 ;
 int NID_sha1WithRSAEncryption ;
 int SHA_CBLOCK ;
 int SHA_DIGEST_LENGTH ;
 int const* sha1_md ;
 int test_sha1_final ;
 int test_sha1_init ;
 int test_sha1_update ;

__attribute__((used)) static const EVP_MD *test_sha_md(void)
{
    if (sha1_md == ((void*)0)) {
        EVP_MD *md;

        if ((md = EVP_MD_meth_new(NID_sha1, NID_sha1WithRSAEncryption)) == ((void*)0)
            || !EVP_MD_meth_set_result_size(md, SHA_DIGEST_LENGTH)
            || !EVP_MD_meth_set_input_blocksize(md, SHA_CBLOCK)
            || !EVP_MD_meth_set_app_datasize(md,
                                             sizeof(EVP_MD *) + sizeof(SHA_CTX))
            || !EVP_MD_meth_set_flags(md, 0)
            || !EVP_MD_meth_set_init(md, test_sha1_init)
            || !EVP_MD_meth_set_update(md, test_sha1_update)
            || !EVP_MD_meth_set_final(md, test_sha1_final)) {
            EVP_MD_meth_free(md);
            md = ((void*)0);
        }
        sha1_md = md;
    }
    return sha1_md;
}

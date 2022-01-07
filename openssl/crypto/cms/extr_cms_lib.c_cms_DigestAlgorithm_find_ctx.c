
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_ALGOR ;
typedef int EVP_MD_CTX ;
typedef int BIO ;
typedef int ASN1_OBJECT ;


 int BIO_TYPE_MD ;
 int * BIO_find_type (int *,int ) ;
 int BIO_get_md_ctx (int *,int **) ;
 int * BIO_next (int *) ;
 int CMS_F_CMS_DIGESTALGORITHM_FIND_CTX ;
 int CMS_R_NO_MATCHING_DIGEST ;
 int CMSerr (int ,int ) ;
 int EVP_MD_CTX_copy_ex (int *,int *) ;
 int EVP_MD_CTX_md (int *) ;
 int EVP_MD_CTX_type (int *) ;
 int EVP_MD_pkey_type (int ) ;
 int OBJ_obj2nid (int const*) ;
 int X509_ALGOR_get0 (int const**,int *,int *,int *) ;

int cms_DigestAlgorithm_find_ctx(EVP_MD_CTX *mctx, BIO *chain,
                                 X509_ALGOR *mdalg)
{
    int nid;
    const ASN1_OBJECT *mdoid;
    X509_ALGOR_get0(&mdoid, ((void*)0), ((void*)0), mdalg);
    nid = OBJ_obj2nid(mdoid);

    for (;;) {
        EVP_MD_CTX *mtmp;
        chain = BIO_find_type(chain, BIO_TYPE_MD);
        if (chain == ((void*)0)) {
            CMSerr(CMS_F_CMS_DIGESTALGORITHM_FIND_CTX,
                   CMS_R_NO_MATCHING_DIGEST);
            return 0;
        }
        BIO_get_md_ctx(chain, &mtmp);
        if (EVP_MD_CTX_type(mtmp) == nid




            || EVP_MD_pkey_type(EVP_MD_CTX_md(mtmp)) == nid)
            return EVP_MD_CTX_copy_ex(mctx, mtmp);
        chain = BIO_next(chain);
    }
}

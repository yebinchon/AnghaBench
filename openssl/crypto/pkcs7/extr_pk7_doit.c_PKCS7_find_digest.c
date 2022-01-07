
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_MD_CTX ;
typedef int BIO ;


 int BIO_TYPE_MD ;
 int * BIO_find_type (int *,int ) ;
 int BIO_get_md_ctx (int *,int **) ;
 int * BIO_next (int *) ;
 int ERR_R_INTERNAL_ERROR ;
 int EVP_MD_CTX_type (int *) ;
 int PKCS7_F_PKCS7_FIND_DIGEST ;
 int PKCS7_R_UNABLE_TO_FIND_MESSAGE_DIGEST ;
 int PKCS7err (int ,int ) ;

__attribute__((used)) static BIO *PKCS7_find_digest(EVP_MD_CTX **pmd, BIO *bio, int nid)
{
    for (;;) {
        bio = BIO_find_type(bio, BIO_TYPE_MD);
        if (bio == ((void*)0)) {
            PKCS7err(PKCS7_F_PKCS7_FIND_DIGEST,
                     PKCS7_R_UNABLE_TO_FIND_MESSAGE_DIGEST);
            return ((void*)0);
        }
        BIO_get_md_ctx(bio, pmd);
        if (*pmd == ((void*)0)) {
            PKCS7err(PKCS7_F_PKCS7_FIND_DIGEST, ERR_R_INTERNAL_ERROR);
            return ((void*)0);
        }
        if (EVP_MD_CTX_type(*pmd) == nid)
            return bio;
        bio = BIO_next(bio);
    }
    return ((void*)0);
}

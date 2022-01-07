
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int pem_password_cb ;
typedef int buf ;
struct TYPE_5__ {unsigned char* iv; int * cipher; } ;
struct TYPE_7__ {int enc_len; int * x509; TYPE_2__* x_pkey; TYPE_1__ enc_cipher; int * enc_data; } ;
typedef TYPE_3__ X509_INFO ;
struct TYPE_6__ {int dec_pkey; } ;
typedef int EVP_CIPHER ;
typedef int BIO ;


 int EVP_CIPHER_iv_length (int *) ;
 int EVP_CIPHER_nid (int *) ;
 int EVP_PKEY_get0_RSA (int ) ;
 char* OBJ_nid2sn (int ) ;
 int OPENSSL_cleanse (char*,int) ;
 int PEM_BUFSIZE ;
 int PEM_F_PEM_X509_INFO_WRITE_BIO ;
 int PEM_R_CIPHER_IS_NULL ;
 int PEM_R_UNSUPPORTED_CIPHER ;
 int PEM_STRING_RSA ;
 int PEM_TYPE_ENCRYPTED ;
 int PEM_dek_info (char*,char const*,int,char*) ;
 int PEM_proc_type (char*,int ) ;
 int PEM_write_bio (int *,int ,char*,unsigned char*,int) ;
 scalar_t__ PEM_write_bio_RSAPrivateKey (int *,int ,int *,unsigned char*,int,int *,void*) ;
 scalar_t__ PEM_write_bio_X509 (int *,int *) ;
 int PEMerr (int ,int ) ;
 int strlen (char const*) ;

int PEM_X509_INFO_write_bio(BIO *bp, X509_INFO *xi, EVP_CIPHER *enc,
                            unsigned char *kstr, int klen,
                            pem_password_cb *cb, void *u)
{
    int i, ret = 0;
    unsigned char *data = ((void*)0);
    const char *objstr = ((void*)0);
    char buf[PEM_BUFSIZE];
    unsigned char *iv = ((void*)0);

    if (enc != ((void*)0)) {
        objstr = OBJ_nid2sn(EVP_CIPHER_nid(enc));
        if (objstr == ((void*)0)




                || (strlen(objstr) + 23 + 2 * EVP_CIPHER_iv_length(enc) + 13)
                   > sizeof(buf)) {
            PEMerr(PEM_F_PEM_X509_INFO_WRITE_BIO, PEM_R_UNSUPPORTED_CIPHER);
            goto err;
        }
    }






    if (xi->x_pkey != ((void*)0)) {
        if ((xi->enc_data != ((void*)0)) && (xi->enc_len > 0)) {
            if (enc == ((void*)0)) {
                PEMerr(PEM_F_PEM_X509_INFO_WRITE_BIO, PEM_R_CIPHER_IS_NULL);
                goto err;
            }


            iv = xi->enc_cipher.iv;
            data = (unsigned char *)xi->enc_data;
            i = xi->enc_len;






            objstr = OBJ_nid2sn(EVP_CIPHER_nid(xi->enc_cipher.cipher));
            if (objstr == ((void*)0)) {
                PEMerr(PEM_F_PEM_X509_INFO_WRITE_BIO,
                       PEM_R_UNSUPPORTED_CIPHER);
                goto err;
            }


            buf[0] = '\0';
            PEM_proc_type(buf, PEM_TYPE_ENCRYPTED);
            PEM_dek_info(buf, objstr, EVP_CIPHER_iv_length(enc),
                         (char *)iv);


            i = PEM_write_bio(bp, PEM_STRING_RSA, buf, data, i);
            if (i <= 0)
                goto err;
        } else {



            if (PEM_write_bio_RSAPrivateKey(bp,
                                            EVP_PKEY_get0_RSA(xi->x_pkey->dec_pkey),
                                            enc, kstr, klen, cb, u) <= 0)
                goto err;

        }
    }


    if ((xi->x509 != ((void*)0)) && (PEM_write_bio_X509(bp, xi->x509) <= 0))
        goto err;







    ret = 1;

 err:
    OPENSSL_cleanse(buf, PEM_BUFSIZE);
    return ret;
}

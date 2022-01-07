
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509 ;
typedef int PKCS7 ;
typedef int EVP_PKEY ;
typedef int BIO ;


 scalar_t__ BIO_TYPE_CIPHER ;
 int BIO_f_buffer () ;
 int BIO_free_all (int *) ;
 int BIO_get_cipher_status (int *) ;
 scalar_t__ BIO_method_type (int *) ;
 int * BIO_new (int ) ;
 int * BIO_push (int *,int *) ;
 int BIO_read (int *,char*,int ) ;
 int BIO_write (int *,char*,int) ;
 int BUFFERSIZE ;
 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_free (char*) ;
 char* OPENSSL_malloc (int ) ;
 int PKCS7_F_PKCS7_DECRYPT ;
 int PKCS7_R_DECRYPT_ERROR ;
 int PKCS7_R_INVALID_NULL_POINTER ;
 int PKCS7_R_PRIVATE_KEY_DOES_NOT_MATCH_CERTIFICATE ;
 int PKCS7_R_WRONG_CONTENT_TYPE ;
 int PKCS7_TEXT ;
 int * PKCS7_dataDecode (int *,int *,int *,int *) ;
 int PKCS7_type_is_enveloped (int *) ;
 int PKCS7err (int ,int ) ;
 int SMIME_text (int *,int *) ;
 int X509_check_private_key (int *,int *) ;

int PKCS7_decrypt(PKCS7 *p7, EVP_PKEY *pkey, X509 *cert, BIO *data, int flags)
{
    BIO *tmpmem;
    int ret = 0, i;
    char *buf = ((void*)0);

    if (p7 == ((void*)0)) {
        PKCS7err(PKCS7_F_PKCS7_DECRYPT, PKCS7_R_INVALID_NULL_POINTER);
        return 0;
    }

    if (!PKCS7_type_is_enveloped(p7)) {
        PKCS7err(PKCS7_F_PKCS7_DECRYPT, PKCS7_R_WRONG_CONTENT_TYPE);
        return 0;
    }

    if (cert && !X509_check_private_key(cert, pkey)) {
        PKCS7err(PKCS7_F_PKCS7_DECRYPT,
                 PKCS7_R_PRIVATE_KEY_DOES_NOT_MATCH_CERTIFICATE);
        return 0;
    }

    if ((tmpmem = PKCS7_dataDecode(p7, pkey, ((void*)0), cert)) == ((void*)0)) {
        PKCS7err(PKCS7_F_PKCS7_DECRYPT, PKCS7_R_DECRYPT_ERROR);
        return 0;
    }

    if (flags & PKCS7_TEXT) {
        BIO *tmpbuf, *bread;

        if ((tmpbuf = BIO_new(BIO_f_buffer())) == ((void*)0)) {
            PKCS7err(PKCS7_F_PKCS7_DECRYPT, ERR_R_MALLOC_FAILURE);
            BIO_free_all(tmpmem);
            return 0;
        }
        if ((bread = BIO_push(tmpbuf, tmpmem)) == ((void*)0)) {
            PKCS7err(PKCS7_F_PKCS7_DECRYPT, ERR_R_MALLOC_FAILURE);
            BIO_free_all(tmpbuf);
            BIO_free_all(tmpmem);
            return 0;
        }
        ret = SMIME_text(bread, data);
        if (ret > 0 && BIO_method_type(tmpmem) == BIO_TYPE_CIPHER) {
            if (!BIO_get_cipher_status(tmpmem))
                ret = 0;
        }
        BIO_free_all(bread);
        return ret;
    }
    if ((buf = OPENSSL_malloc(BUFFERSIZE)) == ((void*)0)) {
        PKCS7err(PKCS7_F_PKCS7_DECRYPT, ERR_R_MALLOC_FAILURE);
        goto err;
    }
    for (;;) {
        i = BIO_read(tmpmem, buf, BUFFERSIZE);
        if (i <= 0) {
            ret = 1;
            if (BIO_method_type(tmpmem) == BIO_TYPE_CIPHER) {
                if (!BIO_get_cipher_status(tmpmem))
                    ret = 0;
            }

            break;
        }
        if (BIO_write(data, buf, i) != i) {
            break;
        }
    }
err:
    OPENSSL_free(buf);
    BIO_free_all(tmpmem);
    return ret;
}

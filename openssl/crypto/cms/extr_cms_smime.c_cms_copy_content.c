
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int BIO ;


 scalar_t__ BIO_TYPE_CIPHER ;
 int BIO_free (int *) ;
 int BIO_get_cipher_status (int *) ;
 scalar_t__ BIO_method_type (int *) ;
 int BIO_read (int *,unsigned char*,int) ;
 int BIO_write (int *,unsigned char*,int) ;
 int CMS_F_CMS_COPY_CONTENT ;
 int CMS_R_SMIME_TEXT_ERROR ;
 unsigned int CMS_TEXT ;
 int CMSerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int SMIME_text (int *,int *) ;
 int * cms_get_text_bio (int *,unsigned int) ;

__attribute__((used)) static int cms_copy_content(BIO *out, BIO *in, unsigned int flags)
{
    unsigned char buf[4096];
    int r = 0, i;
    BIO *tmpout;

    tmpout = cms_get_text_bio(out, flags);

    if (tmpout == ((void*)0)) {
        CMSerr(CMS_F_CMS_COPY_CONTENT, ERR_R_MALLOC_FAILURE);
        goto err;
    }


    for (;;) {
        i = BIO_read(in, buf, sizeof(buf));
        if (i <= 0) {
            if (BIO_method_type(in) == BIO_TYPE_CIPHER) {
                if (!BIO_get_cipher_status(in))
                    goto err;
            }
            if (i < 0)
                goto err;
            break;
        }

        if (tmpout && (BIO_write(tmpout, buf, i) != i))
            goto err;
    }

    if (flags & CMS_TEXT) {
        if (!SMIME_text(tmpout, out)) {
            CMSerr(CMS_F_CMS_COPY_CONTENT, CMS_R_SMIME_TEXT_ERROR);
            goto err;
        }
    }

    r = 1;

 err:
    if (tmpout != out)
        BIO_free(tmpout);
    return r;

}

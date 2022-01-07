
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int CMS_ContentInfo ;
typedef int BIO ;


 int BIO_free (int *) ;
 int * BIO_new (int ) ;
 int BIO_s_mem () ;
 int BIO_s_null () ;
 scalar_t__ BIO_write (int *,int const*,size_t) ;
 int CMS_ContentInfo_free (int *) ;
 int ERR_clear_error () ;
 int OPENSSL_assert (int) ;
 int * d2i_CMS_bio (int *,int *) ;
 int i2d_CMS_bio (int *,int *) ;

int FuzzerTestOneInput(const uint8_t *buf, size_t len)
{
    CMS_ContentInfo *cms;
    BIO *in;

    if (len == 0)
        return 0;

    in = BIO_new(BIO_s_mem());
    OPENSSL_assert((size_t)BIO_write(in, buf, len) == len);
    cms = d2i_CMS_bio(in, ((void*)0));
    if (cms != ((void*)0)) {
        BIO *out = BIO_new(BIO_s_null());

        i2d_CMS_bio(out, cms);
        BIO_free(out);
        CMS_ContentInfo_free(cms);
    }

    BIO_free(in);
    ERR_clear_error();

    return 0;
}

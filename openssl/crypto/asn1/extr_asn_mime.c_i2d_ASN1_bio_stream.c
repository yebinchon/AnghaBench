
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;
typedef int ASN1_VALUE ;
typedef int ASN1_ITEM ;


 int ASN1_F_I2D_ASN1_BIO_STREAM ;
 int ASN1_item_i2d_bio (int const*,int *,int *) ;
 int ASN1err (int ,int ) ;
 int BIO_flush (int *) ;
 int BIO_free (int *) ;
 int * BIO_new_NDEF (int *,int *,int const*) ;
 int * BIO_pop (int *) ;
 int ERR_R_MALLOC_FAILURE ;
 int SMIME_STREAM ;
 int SMIME_crlf_copy (int *,int *,int) ;

int i2d_ASN1_bio_stream(BIO *out, ASN1_VALUE *val, BIO *in, int flags,
                        const ASN1_ITEM *it)
{

    if (flags & SMIME_STREAM) {
        BIO *bio, *tbio;
        bio = BIO_new_NDEF(out, val, it);
        if (!bio) {
            ASN1err(ASN1_F_I2D_ASN1_BIO_STREAM, ERR_R_MALLOC_FAILURE);
            return 0;
        }
        SMIME_crlf_copy(in, bio, flags);
        (void)BIO_flush(bio);

        do {
            tbio = BIO_pop(bio);
            BIO_free(bio);
            bio = tbio;
        } while (bio != out);
    }




    else
        ASN1_item_i2d_bio(it, out, val);
    return 1;
}

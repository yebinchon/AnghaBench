
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;
typedef int ASN1_VALUE ;
typedef int ASN1_ITEM ;


 int ASN1_F_B64_READ_ASN1 ;
 int ASN1_R_DECODE_ERROR ;
 int * ASN1_item_d2i_bio (int const*,int *,int *) ;
 int ASN1err (int ,int ) ;
 int BIO_f_base64 () ;
 int BIO_flush (int *) ;
 int BIO_free (int *) ;
 int * BIO_new (int ) ;
 int BIO_pop (int *) ;
 int * BIO_push (int *,int *) ;
 int ERR_R_MALLOC_FAILURE ;

__attribute__((used)) static ASN1_VALUE *b64_read_asn1(BIO *bio, const ASN1_ITEM *it)
{
    BIO *b64;
    ASN1_VALUE *val;

    if ((b64 = BIO_new(BIO_f_base64())) == ((void*)0)) {
        ASN1err(ASN1_F_B64_READ_ASN1, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    bio = BIO_push(b64, bio);
    val = ASN1_item_d2i_bio(it, bio, ((void*)0));
    if (!val)
        ASN1err(ASN1_F_B64_READ_ASN1, ASN1_R_DECODE_ERROR);
    (void)BIO_flush(bio);
    BIO_pop(bio);
    BIO_free(b64);
    return val;
}

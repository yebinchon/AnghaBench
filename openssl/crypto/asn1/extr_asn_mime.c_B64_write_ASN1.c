
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;
typedef int ASN1_VALUE ;
typedef int ASN1_ITEM ;


 int ASN1_F_B64_WRITE_ASN1 ;
 int ASN1err (int ,int ) ;
 int BIO_f_base64 () ;
 int BIO_flush (int *) ;
 int BIO_free (int *) ;
 int * BIO_new (int ) ;
 int BIO_pop (int *) ;
 int * BIO_push (int *,int *) ;
 int ERR_R_MALLOC_FAILURE ;
 int i2d_ASN1_bio_stream (int *,int *,int *,int,int const*) ;

__attribute__((used)) static int B64_write_ASN1(BIO *out, ASN1_VALUE *val, BIO *in, int flags,
                          const ASN1_ITEM *it)
{
    BIO *b64;
    int r;
    b64 = BIO_new(BIO_f_base64());
    if (b64 == ((void*)0)) {
        ASN1err(ASN1_F_B64_WRITE_ASN1, ERR_R_MALLOC_FAILURE);
        return 0;
    }



    out = BIO_push(b64, out);
    r = i2d_ASN1_bio_stream(out, val, in, flags, it);
    (void)BIO_flush(out);
    BIO_pop(out);
    BIO_free(b64);
    return r;
}

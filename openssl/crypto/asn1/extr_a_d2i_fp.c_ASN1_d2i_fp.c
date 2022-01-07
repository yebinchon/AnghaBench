
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int d2i_of_void ;
typedef int FILE ;
typedef int BIO ;


 int ASN1_F_ASN1_D2I_FP ;
 void* ASN1_d2i_bio (void* (*) (),int *,int *,void**) ;
 int ASN1err (int ,int ) ;
 int BIO_NOCLOSE ;
 int BIO_free (int *) ;
 int * BIO_new (int ) ;
 int BIO_s_file () ;
 int BIO_set_fp (int *,int *,int ) ;
 int ERR_R_BUF_LIB ;

void *ASN1_d2i_fp(void *(*xnew) (void), d2i_of_void *d2i, FILE *in, void **x)
{
    BIO *b;
    void *ret;

    if ((b = BIO_new(BIO_s_file())) == ((void*)0)) {
        ASN1err(ASN1_F_ASN1_D2I_FP, ERR_R_BUF_LIB);
        return ((void*)0);
    }
    BIO_set_fp(b, in, BIO_NOCLOSE);
    ret = ASN1_d2i_bio(xnew, d2i, b, x);
    BIO_free(b);
    return ret;
}

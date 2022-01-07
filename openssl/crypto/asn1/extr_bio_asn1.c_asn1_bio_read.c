
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;


 int * BIO_next (int *) ;
 int BIO_read (int *,char*,int) ;

__attribute__((used)) static int asn1_bio_read(BIO *b, char *in, int inl)
{
    BIO *next = BIO_next(b);
    if (next == ((void*)0))
        return 0;
    return BIO_read(next, in, inl);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;


 int BIO_gets (int *,char*,int) ;
 int * BIO_next (int *) ;

__attribute__((used)) static int asn1_bio_gets(BIO *b, char *str, int size)
{
    BIO *next = BIO_next(b);
    if (next == ((void*)0))
        return 0;
    return BIO_gets(next, str, size);
}

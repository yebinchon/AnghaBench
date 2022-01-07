
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;


 int BIO_FLAGS_RWS ;
 int BIO_FLAGS_SHOULD_RETRY ;
 int BIO_clear_flags (int *,int) ;
 int * BIO_next (int *) ;
 int BIO_set_flags (int *,int) ;
 int BIO_test_flags (int *,int) ;

__attribute__((used)) static void copy_flags(BIO *bio)
{
    int flags;
    BIO *next = BIO_next(bio);

    flags = BIO_test_flags(next, BIO_FLAGS_SHOULD_RETRY | BIO_FLAGS_RWS);
    BIO_clear_flags(bio, BIO_FLAGS_SHOULD_RETRY | BIO_FLAGS_RWS);
    BIO_set_flags(bio, flags);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;
typedef int BIO ;


 int BIO_FLAGS_UPLINK_INTERNAL ;
 int * BIO_new (int ) ;
 int BIO_s_file () ;
 int BIO_set_flags (int *,int ) ;
 int BIO_set_fp (int *,int *,int) ;

BIO *BIO_new_fp(FILE *stream, int close_flag)
{
    BIO *ret;

    if ((ret = BIO_new(BIO_s_file())) == ((void*)0))
        return ((void*)0);


    BIO_set_flags(ret, BIO_FLAGS_UPLINK_INTERNAL);
    BIO_set_fp(ret, stream, close_flag);
    return ret;
}

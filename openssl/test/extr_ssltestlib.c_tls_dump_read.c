
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;


 int * BIO_next (int *) ;
 int BIO_read (int *,char*,int) ;
 int copy_flags (int *) ;
 int dump_data (char*,int) ;

__attribute__((used)) static int tls_dump_read(BIO *bio, char *out, int outl)
{
    int ret;
    BIO *next = BIO_next(bio);

    ret = BIO_read(next, out, outl);
    copy_flags(bio);

    if (ret > 0) {
        dump_data(out, ret);
    }

    return ret;
}

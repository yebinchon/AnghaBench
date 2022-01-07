
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;


 int * BIO_new (int ) ;
 int BIO_s_mem () ;
 int BIO_s_null () ;
 int BIO_set_mem_eof_return (int *,int ) ;
 unsigned int CMS_TEXT ;

__attribute__((used)) static BIO *cms_get_text_bio(BIO *out, unsigned int flags)
{
    BIO *rbio;
    if (out == ((void*)0))
        rbio = BIO_new(BIO_s_null());
    else if (flags & CMS_TEXT) {
        rbio = BIO_new(BIO_s_mem());
        BIO_set_mem_eof_return(rbio, 0);
    } else
        rbio = out;
    return rbio;
}

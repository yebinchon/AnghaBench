
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;


 int BIO_get_data (int *) ;
 int OPENSSL_free (int ) ;

__attribute__((used)) static int trace_free(BIO *channel)
{
    if (channel == ((void*)0))
        return 0;
    OPENSSL_free(BIO_get_data(channel));
    return 1;
}

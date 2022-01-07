
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;


 scalar_t__ BIO_TYPE_DGRAM_SCTP ;
 scalar_t__ BIO_method_type (int *) ;

int BIO_dgram_is_sctp(BIO *bio)
{
    return (BIO_method_type(bio) == BIO_TYPE_DGRAM_SCTP);
}

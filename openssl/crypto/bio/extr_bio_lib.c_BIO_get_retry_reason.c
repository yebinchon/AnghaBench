
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int retry_reason; } ;
typedef TYPE_1__ BIO ;



int BIO_get_retry_reason(BIO *bio)
{
    return bio->retry_reason;
}

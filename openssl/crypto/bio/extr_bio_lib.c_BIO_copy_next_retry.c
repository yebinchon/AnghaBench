
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int retry_reason; } ;
struct TYPE_5__ {TYPE_3__* next_bio; int retry_reason; } ;
typedef TYPE_1__ BIO ;


 int BIO_get_retry_flags (TYPE_3__*) ;
 int BIO_set_flags (TYPE_1__*,int ) ;

void BIO_copy_next_retry(BIO *b)
{
    BIO_set_flags(b, BIO_get_retry_flags(b->next_bio));
    b->retry_reason = b->next_bio->retry_reason;
}

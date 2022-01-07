
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; scalar_t__ init; int num; scalar_t__ shutdown; } ;
typedef TYPE_1__ BIO ;


 int BIO_FLAGS_UPLINK_INTERNAL ;
 int UP_close (int ) ;

__attribute__((used)) static int fd_free(BIO *a)
{
    if (a == ((void*)0))
        return 0;
    if (a->shutdown) {
        if (a->init) {
            UP_close(a->num);
        }
        a->init = 0;
        a->flags = BIO_FLAGS_UPLINK_INTERNAL;
    }
    return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int sa_family; } ;
struct TYPE_6__ {TYPE_1__ sa; } ;
typedef TYPE_2__ BIO_ADDR ;


 int AF_UNSPEC ;
 int memset (TYPE_2__*,int ,int) ;

void BIO_ADDR_clear(BIO_ADDR *ap)
{
    memset(ap, 0, sizeof(*ap));
    ap->sa.sa_family = AF_UNSPEC;
}

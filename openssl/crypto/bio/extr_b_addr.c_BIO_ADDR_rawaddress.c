
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int sun_path; } ;
struct TYPE_9__ {scalar_t__ sa_family; } ;
struct TYPE_8__ {int sin6_addr; } ;
struct TYPE_7__ {int sin_addr; } ;
struct TYPE_11__ {TYPE_4__ s_un; TYPE_3__ sa; TYPE_2__ s_in6; TYPE_1__ s_in; } ;
typedef TYPE_5__ BIO_ADDR ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 scalar_t__ AF_UNIX ;
 int memcpy (void*,void const*,size_t) ;
 size_t strlen (int ) ;

int BIO_ADDR_rawaddress(const BIO_ADDR *ap, void *p, size_t *l)
{
    size_t len = 0;
    const void *addrptr = ((void*)0);

    if (ap->sa.sa_family == AF_INET) {
        len = sizeof(ap->s_in.sin_addr);
        addrptr = &ap->s_in.sin_addr;
    }
    if (addrptr == ((void*)0))
        return 0;

    if (p != ((void*)0)) {
        memcpy(p, addrptr, len);
    }
    if (l != ((void*)0))
        *l = len;

    return 1;
}

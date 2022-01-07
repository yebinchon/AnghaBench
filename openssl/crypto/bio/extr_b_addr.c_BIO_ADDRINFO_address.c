
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ bai_addr; } ;
typedef TYPE_1__ BIO_ADDRINFO ;
typedef int const BIO_ADDR ;



const BIO_ADDR *BIO_ADDRINFO_address(const BIO_ADDRINFO *bai)
{
    if (bai != ((void*)0))
        return (BIO_ADDR *)bai->bai_addr;
    return ((void*)0);
}

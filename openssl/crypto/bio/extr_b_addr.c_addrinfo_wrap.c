
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int bai_family; int bai_socktype; int * bai_addr; int * bai_next; scalar_t__ bai_protocol; } ;
typedef TYPE_1__ BIO_ADDRINFO ;
typedef int BIO_ADDR ;


 int AF_UNIX ;
 int BIO_ADDRINFO_free (TYPE_1__*) ;
 int * BIO_ADDR_new () ;
 int BIO_ADDR_rawmake (int *,int,void const*,size_t,unsigned short) ;
 int * BIO_ADDR_sockaddr_noconst (int *) ;
 int BIO_F_ADDRINFO_WRAP ;
 int BIOerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 scalar_t__ IPPROTO_TCP ;
 scalar_t__ IPPROTO_UDP ;
 TYPE_1__* OPENSSL_zalloc (int) ;
 int SOCK_DGRAM ;
 int SOCK_STREAM ;

__attribute__((used)) static int addrinfo_wrap(int family, int socktype,
                         const void *where, size_t wherelen,
                         unsigned short port,
                         BIO_ADDRINFO **bai)
{
    if ((*bai = OPENSSL_zalloc(sizeof(**bai))) == ((void*)0)) {
        BIOerr(BIO_F_ADDRINFO_WRAP, ERR_R_MALLOC_FAILURE);
        return 0;
    }

    (*bai)->bai_family = family;
    (*bai)->bai_socktype = socktype;
    if (socktype == SOCK_STREAM)
        (*bai)->bai_protocol = IPPROTO_TCP;
    if (socktype == SOCK_DGRAM)
        (*bai)->bai_protocol = IPPROTO_UDP;




    {





        BIO_ADDR *addr = BIO_ADDR_new();
        if (addr != ((void*)0)) {
            BIO_ADDR_rawmake(addr, family, where, wherelen, port);
            (*bai)->bai_addr = BIO_ADDR_sockaddr_noconst(addr);
        }
    }
    (*bai)->bai_next = ((void*)0);
    if ((*bai)->bai_addr == ((void*)0)) {
        BIO_ADDRINFO_free(*bai);
        *bai = ((void*)0);
        return 0;
    }
    return 1;
}

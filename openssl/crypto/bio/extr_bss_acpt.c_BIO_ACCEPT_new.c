
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int accept_sock; int accept_family; } ;
typedef TYPE_1__ BIO_ACCEPT ;


 int BIO_FAMILY_IPANY ;
 int BIO_F_BIO_ACCEPT_NEW ;
 int BIOerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 scalar_t__ INVALID_SOCKET ;
 TYPE_1__* OPENSSL_zalloc (int) ;

__attribute__((used)) static BIO_ACCEPT *BIO_ACCEPT_new(void)
{
    BIO_ACCEPT *ret;

    if ((ret = OPENSSL_zalloc(sizeof(*ret))) == ((void*)0)) {
        BIOerr(BIO_F_BIO_ACCEPT_NEW, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }
    ret->accept_family = BIO_FAMILY_IPANY;
    ret->accept_sock = (int)INVALID_SOCKET;
    return ret;
}

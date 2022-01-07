
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int init; } ;
typedef TYPE_1__ BIO ;


 int BIO_C_NREAD0 ;
 int BIO_F_BIO_NREAD0 ;
 int BIO_R_UNINITIALIZED ;
 long BIO_ctrl (TYPE_1__*,int ,int ,char**) ;
 int BIOerr (int ,int ) ;
 long INT_MAX ;

int BIO_nread0(BIO *bio, char **buf)
{
    long ret;

    if (!bio->init) {
        BIOerr(BIO_F_BIO_NREAD0, BIO_R_UNINITIALIZED);
        return -2;
    }

    ret = BIO_ctrl(bio, BIO_C_NREAD0, 0, buf);
    if (ret > INT_MAX)
        return INT_MAX;
    else
        return (int)ret;
}

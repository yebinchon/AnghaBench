
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int num_read; int init; } ;
typedef TYPE_1__ BIO ;


 int BIO_C_NREAD ;
 int BIO_F_BIO_NREAD ;
 int BIO_R_UNINITIALIZED ;
 scalar_t__ BIO_ctrl (TYPE_1__*,int ,int,char**) ;
 int BIOerr (int ,int ) ;

int BIO_nread(BIO *bio, char **buf, int num)
{
    int ret;

    if (!bio->init) {
        BIOerr(BIO_F_BIO_NREAD, BIO_R_UNINITIALIZED);
        return -2;
    }

    ret = (int)BIO_ctrl(bio, BIO_C_NREAD, num, buf);
    if (ret > 0)
        bio->num_read += ret;
    return ret;
}

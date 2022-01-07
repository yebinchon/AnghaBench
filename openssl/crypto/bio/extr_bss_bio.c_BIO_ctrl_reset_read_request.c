
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;


 int BIO_C_RESET_READ_REQUEST ;
 scalar_t__ BIO_ctrl (int *,int ,int ,int *) ;

int BIO_ctrl_reset_read_request(BIO *bio)
{
    return (BIO_ctrl(bio, BIO_C_RESET_READ_REQUEST, 0, ((void*)0)) != 0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO_info_cb ;
typedef int BIO ;


 long BIO_callback_ctrl (int ,int,int *) ;
 int BIO_next (int *) ;

__attribute__((used)) static long tap_callback_ctrl(BIO *b, int cmd, BIO_info_cb *fp)
{
    return BIO_callback_ctrl(BIO_next(b), cmd, fp);
}

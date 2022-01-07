
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;



 long BIO_ctrl (int *,int,long,void*) ;
 int * BIO_next (int *) ;
 int BIO_set_data (int *,int *) ;

__attribute__((used)) static long tap_ctrl(BIO *b, int cmd, long num, void *ptr)
{
    BIO *next = BIO_next(b);

    switch (cmd) {
    case 128:
        BIO_set_data(b, ((void*)0));
        break;

    default:
        break;
    }
    return BIO_ctrl(next, cmd, num, ptr);
}

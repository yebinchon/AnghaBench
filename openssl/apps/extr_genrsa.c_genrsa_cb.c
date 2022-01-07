
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BN_GENCB ;


 int BIO_flush (int ) ;
 int BIO_write (int ,char*,int) ;
 int BN_GENCB_get_arg (int *) ;
 int verbose ;

__attribute__((used)) static int genrsa_cb(int p, int n, BN_GENCB *cb)
{
    char c = '*';

    if (!verbose)
        return 1;

    if (p == 0)
        c = '.';
    if (p == 1)
        c = '+';
    if (p == 2)
        c = '*';
    if (p == 3)
        c = '\n';
    BIO_write(BN_GENCB_get_arg(cb), &c, 1);
    (void)BIO_flush(BN_GENCB_get_arg(cb));
    return 1;
}

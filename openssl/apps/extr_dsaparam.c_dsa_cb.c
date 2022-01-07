
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int symbols ;
typedef int BN_GENCB ;


 int BIO_flush (int ) ;
 int BIO_write (int ,char*,int) ;
 int BN_GENCB_get_arg (int *) ;
 int verbose ;

__attribute__((used)) static int dsa_cb(int p, int n, BN_GENCB *cb)
{
    static const char symbols[] = ".+*\n";
    char c = (p >= 0 && (size_t)p < sizeof(symbols) - 1) ? symbols[p] : '?';

    if (!verbose)
        return 1;

    BIO_write(BN_GENCB_get_arg(cb), &c, 1);
    (void)BIO_flush(BN_GENCB_get_arg(cb));
    return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int signature; int sig_alg; int siginf; } ;
typedef TYPE_1__ X509 ;


 int x509_sig_info_init (int *,int *,int *) ;

void x509_init_sig_info(X509 *x)
{
    x509_sig_info_init(&x->siginf, &x->sig_alg, &x->signature);
}

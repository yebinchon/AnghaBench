
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mdpth; int pdpth; int * mtlsa; int * mcert; } ;
typedef TYPE_1__ SSL_DANE ;


 int X509_free (int *) ;

__attribute__((used)) static void dane_reset(SSL_DANE *dane)
{



    X509_free(dane->mcert);
    dane->mcert = ((void*)0);
    dane->mtlsa = ((void*)0);
    dane->mdpth = -1;
    dane->pdpth = -1;
}

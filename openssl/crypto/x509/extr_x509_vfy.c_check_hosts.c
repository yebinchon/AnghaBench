
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * peername; int hostflags; int hosts; } ;
typedef TYPE_1__ X509_VERIFY_PARAM ;
typedef int X509 ;


 int OPENSSL_free (int *) ;
 scalar_t__ X509_check_host (int *,char*,int ,int ,int **) ;
 int sk_OPENSSL_STRING_num (int ) ;
 char* sk_OPENSSL_STRING_value (int ,int) ;

__attribute__((used)) static int check_hosts(X509 *x, X509_VERIFY_PARAM *vpm)
{
    int i;
    int n = sk_OPENSSL_STRING_num(vpm->hosts);
    char *name;

    if (vpm->peername != ((void*)0)) {
        OPENSSL_free(vpm->peername);
        vpm->peername = ((void*)0);
    }
    for (i = 0; i < n; ++i) {
        name = sk_OPENSSL_STRING_value(vpm->hosts, i);
        if (X509_check_host(x, name, 0, vpm->hostflags, &vpm->peername) > 0)
            return 1;
    }
    return n == 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int iplen; int ip; } ;
typedef TYPE_1__ X509_VERIFY_PARAM ;


 int int_x509_param_set1 (char**,int *,char*,size_t) ;

int X509_VERIFY_PARAM_set1_ip(X509_VERIFY_PARAM *param,
                              const unsigned char *ip, size_t iplen)
{
    if (iplen != 0 && iplen != 4 && iplen != 16)
        return 0;
    return int_x509_param_set1((char **)&param->ip, &param->iplen,
                               (char *)ip, iplen);
}

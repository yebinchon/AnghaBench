
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_VERIFY_PARAM ;


 int ADD_HOST ;
 int int_x509_param_set_hosts (int *,int ,char const*,size_t) ;

int X509_VERIFY_PARAM_add1_host(X509_VERIFY_PARAM *param,
                                const char *name, size_t namelen)
{
    return int_x509_param_set_hosts(param, ADD_HOST, name, namelen);
}

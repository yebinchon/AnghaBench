
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int emaillen; int email; } ;
typedef TYPE_1__ X509_VERIFY_PARAM ;


 int int_x509_param_set1 (int *,int *,char const*,size_t) ;

int X509_VERIFY_PARAM_set1_email(X509_VERIFY_PARAM *param,
                                 const char *email, size_t emaillen)
{
    return int_x509_param_set1(&param->email, &param->emaillen,
                               email, emaillen);
}

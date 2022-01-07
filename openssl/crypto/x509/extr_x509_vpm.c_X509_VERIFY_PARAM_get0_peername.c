
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* peername; } ;
typedef TYPE_1__ X509_VERIFY_PARAM ;



char *X509_VERIFY_PARAM_get0_peername(X509_VERIFY_PARAM *param)
{
    return param->peername;
}

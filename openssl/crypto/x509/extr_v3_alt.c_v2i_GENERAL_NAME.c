
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509V3_EXT_METHOD ;
typedef int X509V3_CTX ;
typedef int GENERAL_NAME ;
typedef int CONF_VALUE ;


 int * v2i_GENERAL_NAME_ex (int *,int const*,int *,int *,int ) ;

GENERAL_NAME *v2i_GENERAL_NAME(const X509V3_EXT_METHOD *method,
                               X509V3_CTX *ctx, CONF_VALUE *cnf)
{
    return v2i_GENERAL_NAME_ex(((void*)0), method, ctx, cnf, 0);
}

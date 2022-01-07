
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int X509V3_EXT_METHOD ;
typedef int X509V3_CTX ;
struct TYPE_3__ {char* name; char* value; } ;
typedef int GENERAL_NAME ;
typedef TYPE_1__ CONF_VALUE ;


 int ERR_add_error_data (int,char*,char*) ;
 int GEN_DIRNAME ;
 int GEN_DNS ;
 int GEN_EMAIL ;
 int GEN_IPADD ;
 int GEN_OTHERNAME ;
 int GEN_RID ;
 int GEN_URI ;
 int X509V3_F_V2I_GENERAL_NAME_EX ;
 int X509V3_R_MISSING_VALUE ;
 int X509V3_R_UNSUPPORTED_OPTION ;
 int X509V3err (int ,int ) ;
 int * a2i_GENERAL_NAME (int *,int const*,int *,int,char*,int) ;
 int v3_name_cmp (char*,char*) ;

GENERAL_NAME *v2i_GENERAL_NAME_ex(GENERAL_NAME *out,
                                  const X509V3_EXT_METHOD *method,
                                  X509V3_CTX *ctx, CONF_VALUE *cnf, int is_nc)
{
    int type;

    char *name, *value;

    name = cnf->name;
    value = cnf->value;

    if (!value) {
        X509V3err(X509V3_F_V2I_GENERAL_NAME_EX, X509V3_R_MISSING_VALUE);
        return ((void*)0);
    }

    if (!v3_name_cmp(name, "email"))
        type = GEN_EMAIL;
    else if (!v3_name_cmp(name, "URI"))
        type = GEN_URI;
    else if (!v3_name_cmp(name, "DNS"))
        type = GEN_DNS;
    else if (!v3_name_cmp(name, "RID"))
        type = GEN_RID;
    else if (!v3_name_cmp(name, "IP"))
        type = GEN_IPADD;
    else if (!v3_name_cmp(name, "dirName"))
        type = GEN_DIRNAME;
    else if (!v3_name_cmp(name, "otherName"))
        type = GEN_OTHERNAME;
    else {
        X509V3err(X509V3_F_V2I_GENERAL_NAME_EX, X509V3_R_UNSUPPORTED_OPTION);
        ERR_add_error_data(2, "name=", name);
        return ((void*)0);
    }

    return a2i_GENERAL_NAME(out, method, ctx, type, value, is_nc);

}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int X509V3_EXT_METHOD ;
typedef int X509V3_CTX ;
struct TYPE_5__ {int length; int data; } ;
typedef int ASN1_STRING ;
typedef TYPE_1__ ASN1_IA5STRING ;


 int ASN1_IA5STRING_free (TYPE_1__*) ;
 TYPE_1__* ASN1_IA5STRING_new () ;
 int ASN1_STRING_set (int *,char const*,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int X509V3_F_S2I_ASN1_IA5STRING ;
 int X509V3_R_INVALID_NULL_ARGUMENT ;
 int X509V3err (int ,int ) ;
 int ebcdic2ascii (int ,int ,int ) ;
 int strlen (char const*) ;

ASN1_IA5STRING *s2i_ASN1_IA5STRING(X509V3_EXT_METHOD *method,
                                   X509V3_CTX *ctx, const char *str)
{
    ASN1_IA5STRING *ia5;
    if (!str) {
        X509V3err(X509V3_F_S2I_ASN1_IA5STRING,
                  X509V3_R_INVALID_NULL_ARGUMENT);
        return ((void*)0);
    }
    if ((ia5 = ASN1_IA5STRING_new()) == ((void*)0))
        goto err;
    if (!ASN1_STRING_set((ASN1_STRING *)ia5, str, strlen(str))) {
        ASN1_IA5STRING_free(ia5);
        return ((void*)0);
    }



    return ia5;
 err:
    X509V3err(X509V3_F_S2I_ASN1_IA5STRING, ERR_R_MALLOC_FAILURE);
    return ((void*)0);
}

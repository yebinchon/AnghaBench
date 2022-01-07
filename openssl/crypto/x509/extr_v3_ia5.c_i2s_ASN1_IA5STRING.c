
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int X509V3_EXT_METHOD ;
struct TYPE_3__ {int length; int data; } ;
typedef TYPE_1__ ASN1_IA5STRING ;


 int ERR_R_MALLOC_FAILURE ;
 char* OPENSSL_malloc (int) ;
 int X509V3_F_I2S_ASN1_IA5STRING ;
 int X509V3err (int ,int ) ;
 int memcpy (char*,int ,int) ;

char *i2s_ASN1_IA5STRING(X509V3_EXT_METHOD *method, ASN1_IA5STRING *ia5)
{
    char *tmp;

    if (!ia5 || !ia5->length)
        return ((void*)0);
    if ((tmp = OPENSSL_malloc(ia5->length + 1)) == ((void*)0)) {
        X509V3err(X509V3_F_I2S_ASN1_IA5STRING, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }
    memcpy(tmp, ia5->data, ia5->length);
    tmp[ia5->length] = 0;
    return tmp;
}

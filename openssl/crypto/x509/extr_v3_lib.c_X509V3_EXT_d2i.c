
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int X509_EXTENSION ;
struct TYPE_3__ {void* (* d2i ) (int *,unsigned char const**,int) ;scalar_t__ it; } ;
typedef TYPE_1__ X509V3_EXT_METHOD ;
typedef int ASN1_STRING ;


 int ASN1_ITEM_ptr (scalar_t__) ;
 unsigned char* ASN1_STRING_get0_data (int *) ;
 int ASN1_STRING_length (int *) ;
 void* ASN1_item_d2i (int *,unsigned char const**,int,int ) ;
 TYPE_1__* X509V3_EXT_get (int *) ;
 int * X509_EXTENSION_get_data (int *) ;
 void* stub1 (int *,unsigned char const**,int) ;

void *X509V3_EXT_d2i(X509_EXTENSION *ext)
{
    const X509V3_EXT_METHOD *method;
    const unsigned char *p;
    ASN1_STRING *extvalue;
    int extlen;

    if ((method = X509V3_EXT_get(ext)) == ((void*)0))
        return ((void*)0);
    extvalue = X509_EXTENSION_get_data(ext);
    p = ASN1_STRING_get0_data(extvalue);
    extlen = ASN1_STRING_length(extvalue);
    if (method->it)
        return ASN1_item_d2i(((void*)0), &p, extlen, ASN1_ITEM_ptr(method->it));
    return method->d2i(((void*)0), &p, extlen);
}

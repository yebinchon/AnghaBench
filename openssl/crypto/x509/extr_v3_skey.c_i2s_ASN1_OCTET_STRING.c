
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int X509V3_EXT_METHOD ;
struct TYPE_3__ {int length; int data; } ;
typedef TYPE_1__ ASN1_OCTET_STRING ;


 char* OPENSSL_buf2hexstr (int ,int ) ;

char *i2s_ASN1_OCTET_STRING(X509V3_EXT_METHOD *method,
                            const ASN1_OCTET_STRING *oct)
{
    return OPENSSL_buf2hexstr(oct->data, oct->length);
}

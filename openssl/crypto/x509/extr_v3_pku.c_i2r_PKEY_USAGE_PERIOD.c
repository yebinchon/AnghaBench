
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int X509V3_EXT_METHOD ;
struct TYPE_3__ {scalar_t__ notAfter; scalar_t__ notBefore; } ;
typedef TYPE_1__ PKEY_USAGE_PERIOD ;
typedef int BIO ;


 int ASN1_GENERALIZEDTIME_print (int *,scalar_t__) ;
 int BIO_printf (int *,char*,int,char*) ;
 int BIO_write (int *,char*,int) ;

__attribute__((used)) static int i2r_PKEY_USAGE_PERIOD(X509V3_EXT_METHOD *method,
                                 PKEY_USAGE_PERIOD *usage, BIO *out,
                                 int indent)
{
    BIO_printf(out, "%*s", indent, "");
    if (usage->notBefore) {
        BIO_write(out, "Not Before: ", 12);
        ASN1_GENERALIZEDTIME_print(out, usage->notBefore);
        if (usage->notAfter)
            BIO_write(out, ", ", 2);
    }
    if (usage->notAfter) {
        BIO_write(out, "Not After: ", 11);
        ASN1_GENERALIZEDTIME_print(out, usage->notAfter);
    }
    return 1;
}

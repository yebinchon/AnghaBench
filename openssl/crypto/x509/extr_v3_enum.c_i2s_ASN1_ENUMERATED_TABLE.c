
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* usr_data; } ;
typedef TYPE_1__ X509V3_EXT_METHOD ;
struct TYPE_6__ {long bitnum; scalar_t__ lname; } ;
typedef TYPE_2__ ENUMERATED_NAMES ;
typedef int ASN1_ENUMERATED ;


 long ASN1_ENUMERATED_get (int const*) ;
 char* OPENSSL_strdup (scalar_t__) ;
 char* i2s_ASN1_ENUMERATED (TYPE_1__*,int const*) ;

char *i2s_ASN1_ENUMERATED_TABLE(X509V3_EXT_METHOD *method,
                                const ASN1_ENUMERATED *e)
{
    ENUMERATED_NAMES *enam;
    long strval;

    strval = ASN1_ENUMERATED_get(e);
    for (enam = method->usr_data; enam->lname; enam++) {
        if (strval == enam->bitnum)
            return OPENSSL_strdup(enam->lname);
    }
    return i2s_ASN1_ENUMERATED(method, e);
}

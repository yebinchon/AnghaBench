
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int X509 ;
struct TYPE_8__ {int serial; int issuer; } ;
struct TYPE_6__ {int dirn; } ;
struct TYPE_7__ {scalar_t__ type; TYPE_1__ d; } ;
typedef TYPE_2__ GENERAL_NAME ;
typedef TYPE_3__ ESS_ISSUER_SERIAL ;


 scalar_t__ ASN1_INTEGER_cmp (int ,int ) ;
 scalar_t__ GEN_DIRNAME ;
 scalar_t__ X509_NAME_cmp (int ,int ) ;
 int X509_get_issuer_name (int *) ;
 int X509_get_serialNumber (int *) ;
 int sk_GENERAL_NAME_num (int ) ;
 TYPE_2__* sk_GENERAL_NAME_value (int ,int ) ;

__attribute__((used)) static int ts_issuer_serial_cmp(ESS_ISSUER_SERIAL *is, X509 *cert)
{
    GENERAL_NAME *issuer;

    if (!is || !cert || sk_GENERAL_NAME_num(is->issuer) != 1)
        return -1;

    issuer = sk_GENERAL_NAME_value(is->issuer, 0);
    if (issuer->type != GEN_DIRNAME
        || X509_NAME_cmp(issuer->d.dirn, X509_get_issuer_name(cert)))
        return -1;

    if (ASN1_INTEGER_cmp(is->serial, X509_get_serialNumber(cert)))
        return -1;

    return 0;
}

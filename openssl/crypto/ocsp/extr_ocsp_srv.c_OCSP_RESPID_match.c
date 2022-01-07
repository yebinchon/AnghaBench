
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int X509 ;
struct TYPE_4__ {int * byName; int * byKey; } ;
struct TYPE_5__ {scalar_t__ type; TYPE_1__ value; } ;
typedef TYPE_2__ OCSP_RESPID ;


 int ASN1_STRING_get0_data (int *) ;
 int ASN1_STRING_length (int *) ;
 int EVP_sha1 () ;
 int SHA_DIGEST_LENGTH ;
 scalar_t__ V_OCSP_RESPID_KEY ;
 scalar_t__ V_OCSP_RESPID_NAME ;
 scalar_t__ X509_NAME_cmp (int *,int ) ;
 int X509_get_subject_name (int *) ;
 int X509_pubkey_digest (int *,int ,unsigned char*,int *) ;
 scalar_t__ memcmp (int ,unsigned char*,int) ;

int OCSP_RESPID_match(OCSP_RESPID *respid, X509 *cert)
{
    if (respid->type == V_OCSP_RESPID_KEY) {
        unsigned char md[SHA_DIGEST_LENGTH];

        if (respid->value.byKey == ((void*)0))
            return 0;


        if (!X509_pubkey_digest(cert, EVP_sha1(), md, ((void*)0)))
            return 0;

        return (ASN1_STRING_length(respid->value.byKey) == SHA_DIGEST_LENGTH)
            && (memcmp(ASN1_STRING_get0_data(respid->value.byKey), md,
                       SHA_DIGEST_LENGTH) == 0);
    } else if (respid->type == V_OCSP_RESPID_NAME) {
        if (respid->value.byName == ((void*)0))
            return 0;

        return X509_NAME_cmp(respid->value.byName,
                             X509_get_subject_name(cert)) == 0;
    }

    return 0;
}

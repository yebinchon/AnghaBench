
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int length; scalar_t__ data; } ;
typedef int REVINFO_TYPE ;
typedef TYPE_1__ ASN1_UTCTIME ;
typedef int ASN1_OBJECT ;


 int ASN1_GENERALIZEDTIME_set_string (int *,char const*) ;
 int ASN1_OBJECT_free (int *) ;
 int ASN1_UTCTIME_free (TYPE_1__*) ;
 int BIO_printf (int ,char*,char const*) ;
 int * OBJ_txt2obj (char const*,int ) ;
 int OPENSSL_strlcat (char*,char const*,int) ;
 int OPENSSL_strlcpy (char*,char*,int) ;






 TYPE_1__* X509_gmtime_adj (int *,int ) ;
 char* app_malloc (int,char*) ;
 int bio_err ;
 char** crl_reasons ;
 int strcasecmp (char const*,char*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static char *make_revocation_str(REVINFO_TYPE rev_type, const char *rev_arg)
{
    char *str;
    const char *reason = ((void*)0), *other = ((void*)0);
    ASN1_OBJECT *otmp;
    ASN1_UTCTIME *revtm = ((void*)0);
    int i;

    switch (rev_type) {
    case 129:
    case 128:
        break;

    case 132:
        for (i = 0; i < 8; i++) {
            if (strcasecmp(rev_arg, crl_reasons[i]) == 0) {
                reason = crl_reasons[i];
                break;
            }
        }
        if (reason == ((void*)0)) {
            BIO_printf(bio_err, "Unknown CRL reason %s\n", rev_arg);
            return ((void*)0);
        }
        break;

    case 131:

        otmp = OBJ_txt2obj(rev_arg, 0);
        ASN1_OBJECT_free(otmp);

        if (otmp == ((void*)0)) {
            BIO_printf(bio_err, "Invalid object identifier %s\n", rev_arg);
            return ((void*)0);
        }

        reason = "holdInstruction";
        other = rev_arg;
        break;

    case 130:
    case 133:

        if (!ASN1_GENERALIZEDTIME_set_string(((void*)0), rev_arg)) {
            BIO_printf(bio_err,
                       "Invalid time format %s. Need YYYYMMDDHHMMSSZ\n",
                       rev_arg);
            return ((void*)0);
        }
        other = rev_arg;
        if (rev_type == 130)
            reason = "keyTime";
        else
            reason = "CAkeyTime";

        break;
    }

    revtm = X509_gmtime_adj(((void*)0), 0);

    if (!revtm)
        return ((void*)0);

    i = revtm->length + 1;

    if (reason)
        i += strlen(reason) + 1;
    if (other)
        i += strlen(other) + 1;

    str = app_malloc(i, "revocation reason");
    OPENSSL_strlcpy(str, (char *)revtm->data, i);
    if (reason) {
        OPENSSL_strlcat(str, ",", i);
        OPENSSL_strlcat(str, reason, i);
    }
    if (other) {
        OPENSSL_strlcat(str, ",", i);
        OPENSSL_strlcat(str, other, i);
    }
    ASN1_UTCTIME_free(revtm);
    return str;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int algorithm; } ;
typedef TYPE_2__ X509_ALGOR ;
struct TYPE_11__ {int algorithm; } ;
struct TYPE_10__ {scalar_t__ trailerField; scalar_t__ saltLength; TYPE_6__* maskGenAlgorithm; TYPE_1__* hashAlgorithm; } ;
struct TYPE_8__ {int algorithm; } ;
typedef TYPE_3__ RSA_PSS_PARAMS ;
typedef int BIO ;


 int BIO_indent (int *,int,int) ;
 scalar_t__ BIO_printf (int *,char*,char*) ;
 scalar_t__ BIO_puts (int *,char*) ;
 int X509_ALGOR_free (TYPE_2__*) ;
 scalar_t__ i2a_ASN1_INTEGER (int *,scalar_t__) ;
 scalar_t__ i2a_ASN1_OBJECT (int *,int ) ;
 TYPE_2__* rsa_mgf1_decode (TYPE_6__*) ;

__attribute__((used)) static int rsa_pss_param_print(BIO *bp, int pss_key, RSA_PSS_PARAMS *pss,
                               int indent)
{
    int rv = 0;
    X509_ALGOR *maskHash = ((void*)0);

    if (!BIO_indent(bp, indent, 128))
        goto err;
    if (pss_key) {
        if (pss == ((void*)0)) {
            if (BIO_puts(bp, "No PSS parameter restrictions\n") <= 0)
                return 0;
            return 1;
        } else {
            if (BIO_puts(bp, "PSS parameter restrictions:") <= 0)
                return 0;
        }
    } else if (pss == ((void*)0)) {
        if (BIO_puts(bp,"(INVALID PSS PARAMETERS)\n") <= 0)
            return 0;
        return 1;
    }
    if (BIO_puts(bp, "\n") <= 0)
        goto err;
    if (pss_key)
        indent += 2;
    if (!BIO_indent(bp, indent, 128))
        goto err;
    if (BIO_puts(bp, "Hash Algorithm: ") <= 0)
        goto err;

    if (pss->hashAlgorithm) {
        if (i2a_ASN1_OBJECT(bp, pss->hashAlgorithm->algorithm) <= 0)
            goto err;
    } else if (BIO_puts(bp, "sha1 (default)") <= 0) {
        goto err;
    }

    if (BIO_puts(bp, "\n") <= 0)
        goto err;

    if (!BIO_indent(bp, indent, 128))
        goto err;

    if (BIO_puts(bp, "Mask Algorithm: ") <= 0)
        goto err;
    if (pss->maskGenAlgorithm) {
        if (i2a_ASN1_OBJECT(bp, pss->maskGenAlgorithm->algorithm) <= 0)
            goto err;
        if (BIO_puts(bp, " with ") <= 0)
            goto err;
        maskHash = rsa_mgf1_decode(pss->maskGenAlgorithm);
        if (maskHash != ((void*)0)) {
            if (i2a_ASN1_OBJECT(bp, maskHash->algorithm) <= 0)
                goto err;
        } else if (BIO_puts(bp, "INVALID") <= 0) {
            goto err;
        }
    } else if (BIO_puts(bp, "mgf1 with sha1 (default)") <= 0) {
        goto err;
    }
    BIO_puts(bp, "\n");

    if (!BIO_indent(bp, indent, 128))
        goto err;
    if (BIO_printf(bp, "%s Salt Length: 0x", pss_key ? "Minimum" : "") <= 0)
        goto err;
    if (pss->saltLength) {
        if (i2a_ASN1_INTEGER(bp, pss->saltLength) <= 0)
            goto err;
    } else if (BIO_puts(bp, "14 (default)") <= 0) {
        goto err;
    }
    BIO_puts(bp, "\n");

    if (!BIO_indent(bp, indent, 128))
        goto err;
    if (BIO_puts(bp, "Trailer Field: 0x") <= 0)
        goto err;
    if (pss->trailerField) {
        if (i2a_ASN1_INTEGER(bp, pss->trailerField) <= 0)
            goto err;
    } else if (BIO_puts(bp, "BC (default)") <= 0) {
        goto err;
    }
    BIO_puts(bp, "\n");

    rv = 1;

 err:
    X509_ALGOR_free(maskHash);
    return rv;

}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_EXTENSION ;
typedef int ASN1_GENERALIZEDTIME ;


 int ASN1_GENERALIZEDTIME_free (int *) ;
 int * ASN1_GENERALIZEDTIME_new () ;
 int ASN1_GENERALIZEDTIME_set_string (int *,char*) ;
 int NID_id_pkix_OCSP_archiveCutoff ;
 int * X509V3_EXT_i2d (int ,int ,int *) ;

X509_EXTENSION *OCSP_archive_cutoff_new(char *tim)
{
    X509_EXTENSION *x = ((void*)0);
    ASN1_GENERALIZEDTIME *gt = ((void*)0);

    if ((gt = ASN1_GENERALIZEDTIME_new()) == ((void*)0))
        goto err;
    if (!(ASN1_GENERALIZEDTIME_set_string(gt, tim)))
        goto err;
    x = X509V3_EXT_i2d(NID_id_pkix_OCSP_archiveCutoff, 0, gt);
 err:
    ASN1_GENERALIZEDTIME_free(gt);
    return x;
}

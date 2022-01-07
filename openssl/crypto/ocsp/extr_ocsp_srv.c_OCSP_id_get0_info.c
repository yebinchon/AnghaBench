
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * algorithm; } ;
struct TYPE_5__ {int serialNumber; int issuerKeyHash; int issuerNameHash; TYPE_1__ hashAlgorithm; } ;
typedef TYPE_2__ OCSP_CERTID ;
typedef int ASN1_OCTET_STRING ;
typedef int ASN1_OBJECT ;
typedef int ASN1_INTEGER ;



int OCSP_id_get0_info(ASN1_OCTET_STRING **piNameHash, ASN1_OBJECT **pmd,
                      ASN1_OCTET_STRING **pikeyHash,
                      ASN1_INTEGER **pserial, OCSP_CERTID *cid)
{
    if (!cid)
        return 0;
    if (pmd)
        *pmd = cid->hashAlgorithm.algorithm;
    if (piNameHash)
        *piNameHash = &cid->issuerNameHash;
    if (pikeyHash)
        *pikeyHash = &cid->issuerKeyHash;
    if (pserial)
        *pserial = &cid->serialNumber;
    return 1;
}

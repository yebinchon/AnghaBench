
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int algorithm; } ;
struct TYPE_6__ {int issuerKeyHash; int issuerNameHash; TYPE_1__ hashAlgorithm; } ;
typedef TYPE_2__ OCSP_CERTID ;


 int ASN1_OCTET_STRING_cmp (int *,int *) ;
 int OBJ_cmp (int ,int ) ;

int OCSP_id_issuer_cmp(const OCSP_CERTID *a, const OCSP_CERTID *b)
{
    int ret;
    ret = OBJ_cmp(a->hashAlgorithm.algorithm, b->hashAlgorithm.algorithm);
    if (ret)
        return ret;
    ret = ASN1_OCTET_STRING_cmp(&a->issuerNameHash, &b->issuerNameHash);
    if (ret)
        return ret;
    return ASN1_OCTET_STRING_cmp(&a->issuerKeyHash, &b->issuerKeyHash);
}

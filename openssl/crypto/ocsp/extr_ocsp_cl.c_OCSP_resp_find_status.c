
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OCSP_SINGLERESP ;
typedef int OCSP_CERTID ;
typedef int OCSP_BASICRESP ;
typedef int ASN1_GENERALIZEDTIME ;


 int OCSP_resp_find (int *,int *,int) ;
 int * OCSP_resp_get0 (int *,int) ;
 int OCSP_single_get0_status (int *,int*,int **,int **,int **) ;

int OCSP_resp_find_status(OCSP_BASICRESP *bs, OCSP_CERTID *id, int *status,
                          int *reason,
                          ASN1_GENERALIZEDTIME **revtime,
                          ASN1_GENERALIZEDTIME **thisupd,
                          ASN1_GENERALIZEDTIME **nextupd)
{
    int i;
    OCSP_SINGLERESP *single;
    i = OCSP_resp_find(bs, id, -1);

    if (i < 0)
        return 0;
    single = OCSP_resp_get0(bs, i);
    i = OCSP_single_get0_status(single, reason, revtime, thisupd, nextupd);
    if (status)
        *status = i;
    return 1;
}

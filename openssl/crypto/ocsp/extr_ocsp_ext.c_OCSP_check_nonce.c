
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_EXTENSION ;
typedef int OCSP_REQUEST ;
typedef int OCSP_BASICRESP ;


 scalar_t__ ASN1_OCTET_STRING_cmp (int ,int ) ;
 int NID_id_pkix_OCSP_Nonce ;
 int * OCSP_BASICRESP_get_ext (int *,int) ;
 int OCSP_BASICRESP_get_ext_by_NID (int *,int ,int) ;
 int * OCSP_REQUEST_get_ext (int *,int) ;
 int OCSP_REQUEST_get_ext_by_NID (int *,int ,int) ;
 int X509_EXTENSION_get_data (int *) ;

int OCSP_check_nonce(OCSP_REQUEST *req, OCSP_BASICRESP *bs)
{
    int req_idx, resp_idx;
    X509_EXTENSION *req_ext, *resp_ext;
    req_idx = OCSP_REQUEST_get_ext_by_NID(req, NID_id_pkix_OCSP_Nonce, -1);
    resp_idx = OCSP_BASICRESP_get_ext_by_NID(bs, NID_id_pkix_OCSP_Nonce, -1);

    if ((req_idx < 0) && (resp_idx < 0))
        return 2;

    if ((req_idx >= 0) && (resp_idx < 0))
        return -1;

    if ((req_idx < 0) && (resp_idx >= 0))
        return 3;



    req_ext = OCSP_REQUEST_get_ext(req, req_idx);
    resp_ext = OCSP_BASICRESP_get_ext(bs, resp_idx);
    if (ASN1_OCTET_STRING_cmp(X509_EXTENSION_get_data(req_ext),
                              X509_EXTENSION_get_data(resp_ext)))
        return 0;
    return 1;
}

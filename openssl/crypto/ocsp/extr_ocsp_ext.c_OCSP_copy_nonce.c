
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_EXTENSION ;
typedef int OCSP_REQUEST ;
typedef int OCSP_BASICRESP ;


 int NID_id_pkix_OCSP_Nonce ;
 int OCSP_BASICRESP_add_ext (int *,int *,int) ;
 int * OCSP_REQUEST_get_ext (int *,int) ;
 int OCSP_REQUEST_get_ext_by_NID (int *,int ,int) ;

int OCSP_copy_nonce(OCSP_BASICRESP *resp, OCSP_REQUEST *req)
{
    X509_EXTENSION *req_ext;
    int req_idx;

    req_idx = OCSP_REQUEST_get_ext_by_NID(req, NID_id_pkix_OCSP_Nonce, -1);

    if (req_idx < 0)
        return 2;
    req_ext = OCSP_REQUEST_get_ext(req, req_idx);
    return OCSP_BASICRESP_add_ext(resp, req_ext, -1);
}

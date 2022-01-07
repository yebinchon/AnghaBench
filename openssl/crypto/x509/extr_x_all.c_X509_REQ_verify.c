
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int algorithm; } ;
struct TYPE_5__ {int req_info; int signature; TYPE_4__ sig_alg; } ;
typedef TYPE_1__ X509_REQ ;
typedef int EVP_PKEY ;


 int ASN1_ITEM_rptr (int ) ;
 int ASN1_R_UNKNOWN_SIGNATURE_ALGORITHM ;
 int ASN1_item_verify (int ,TYPE_4__*,int ,int *,int *) ;
 int NID_sm2 ;
 int OBJ_find_sigid_algs (int ,int*,int*) ;
 int OBJ_obj2nid (int ) ;
 int X509_F_X509_REQ_VERIFY ;
 int X509_REQ_INFO ;
 int X509err (int ,int ) ;
 int x509_req_verify_sm2 (TYPE_1__*,int *,int,int) ;

int X509_REQ_verify(X509_REQ *a, EVP_PKEY *r)
{

    int mdnid, pknid;


    if (!OBJ_find_sigid_algs(OBJ_obj2nid(a->sig_alg.algorithm),
                             &mdnid, &pknid)) {
        X509err(X509_F_X509_REQ_VERIFY, ASN1_R_UNKNOWN_SIGNATURE_ALGORITHM);
        return 0;
    }

    if (pknid == NID_sm2)
        return x509_req_verify_sm2(a, r, mdnid, pknid);


    return (ASN1_item_verify(ASN1_ITEM_rptr(X509_REQ_INFO),
                             &a->sig_alg, a->signature, &a->req_info, r));
}

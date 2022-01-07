
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int signature; } ;
struct TYPE_8__ {int algorithm; } ;
struct TYPE_7__ {TYPE_6__ cert_info; int signature; TYPE_4__ sig_alg; } ;
typedef TYPE_1__ X509 ;
typedef int EVP_PKEY ;


 int ASN1_ITEM_rptr (int ) ;
 int ASN1_R_UNKNOWN_SIGNATURE_ALGORITHM ;
 int ASN1_item_verify (int ,TYPE_4__*,int *,TYPE_6__*,int *) ;
 int NID_sm2 ;
 int OBJ_find_sigid_algs (int ,int*,int*) ;
 int OBJ_obj2nid (int ) ;
 scalar_t__ X509_ALGOR_cmp (TYPE_4__*,int *) ;
 int X509_CINF ;
 int X509_F_X509_VERIFY ;
 int X509err (int ,int ) ;
 int x509_verify_sm2 (TYPE_1__*,int *,int,int) ;

int X509_verify(X509 *a, EVP_PKEY *r)
{

    int mdnid, pknid;


    if (X509_ALGOR_cmp(&a->sig_alg, &a->cert_info.signature))
        return 0;



    if (!OBJ_find_sigid_algs(OBJ_obj2nid(a->sig_alg.algorithm),
                             &mdnid, &pknid)) {
        X509err(X509_F_X509_VERIFY, ASN1_R_UNKNOWN_SIGNATURE_ALGORITHM);
        return 0;
    }

    if (pknid == NID_sm2)
        return x509_verify_sm2(a, r, mdnid, pknid);


    return (ASN1_item_verify(ASN1_ITEM_rptr(X509_CINF), &a->sig_alg,
                             &a->signature, &a->cert_info, r));
}

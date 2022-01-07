
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pubkey; } ;
struct TYPE_5__ {TYPE_1__ req_info; } ;
typedef TYPE_2__ X509_REQ ;
typedef int EVP_PKEY ;


 int * X509_PUBKEY_get0 (int ) ;

EVP_PKEY *X509_REQ_get0_pubkey(X509_REQ *req)
{
    if (req == ((void*)0))
        return ((void*)0);
    return X509_PUBKEY_get0(req->req_info.pubkey);
}

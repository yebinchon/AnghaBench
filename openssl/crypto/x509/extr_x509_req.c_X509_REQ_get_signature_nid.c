
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int algorithm; } ;
struct TYPE_5__ {TYPE_1__ sig_alg; } ;
typedef TYPE_2__ X509_REQ ;


 int OBJ_obj2nid (int ) ;

int X509_REQ_get_signature_nid(const X509_REQ *req)
{
    return OBJ_obj2nid(req->sig_alg.algorithm);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int attributes; } ;
struct TYPE_5__ {TYPE_1__ req_info; } ;
typedef TYPE_2__ X509_REQ ;


 int X509at_get_attr_by_NID (int ,int,int) ;

int X509_REQ_get_attr_by_NID(const X509_REQ *req, int nid, int lastpos)
{
    return X509at_get_attr_by_NID(req->req_info.attributes, nid, lastpos);
}

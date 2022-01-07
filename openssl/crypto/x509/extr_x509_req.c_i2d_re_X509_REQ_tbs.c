
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int modified; } ;
struct TYPE_7__ {TYPE_1__ enc; } ;
struct TYPE_6__ {TYPE_4__ req_info; } ;
typedef TYPE_2__ X509_REQ ;


 int i2d_X509_REQ_INFO (TYPE_4__*,unsigned char**) ;

int i2d_re_X509_REQ_tbs(X509_REQ *req, unsigned char **pp)
{
    req->req_info.enc.modified = 1;
    return i2d_X509_REQ_INFO(&req->req_info, pp);
}

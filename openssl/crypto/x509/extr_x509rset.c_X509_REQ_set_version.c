
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int modified; } ;
struct TYPE_6__ {int version; TYPE_1__ enc; } ;
struct TYPE_7__ {TYPE_2__ req_info; } ;
typedef TYPE_3__ X509_REQ ;


 int ASN1_INTEGER_set (int ,long) ;

int X509_REQ_set_version(X509_REQ *x, long version)
{
    if (x == ((void*)0))
        return 0;
    x->req_info.enc.modified = 1;
    return ASN1_INTEGER_set(x->req_info.version, version);
}

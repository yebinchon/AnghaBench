
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ cert_req; } ;
typedef TYPE_1__ TS_REQ ;



int TS_REQ_get_cert_req(const TS_REQ *a)
{
    return a->cert_req ? 1 : 0;
}

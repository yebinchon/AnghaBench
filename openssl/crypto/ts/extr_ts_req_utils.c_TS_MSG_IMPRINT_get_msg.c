
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * hashed_msg; } ;
typedef TYPE_1__ TS_MSG_IMPRINT ;
typedef int ASN1_OCTET_STRING ;



ASN1_OCTET_STRING *TS_MSG_IMPRINT_get_msg(TS_MSG_IMPRINT *a)
{
    return a->hashed_msg;
}

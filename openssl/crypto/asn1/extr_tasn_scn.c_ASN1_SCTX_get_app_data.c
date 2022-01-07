
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* app_data; } ;
typedef TYPE_1__ ASN1_SCTX ;



void *ASN1_SCTX_get_app_data(ASN1_SCTX *p)
{
    return p->app_data;
}

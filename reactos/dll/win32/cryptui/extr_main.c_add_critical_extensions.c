
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct detail_data {TYPE_1__* pCertViewInfo; } ;
struct TYPE_8__ {scalar_t__ fCritical; } ;
struct TYPE_7__ {TYPE_2__* pCertInfo; } ;
struct TYPE_6__ {size_t cExtension; TYPE_4__* rgExtension; } ;
struct TYPE_5__ {TYPE_3__* pCertContext; } ;
typedef TYPE_3__* PCCERT_CONTEXT ;
typedef int HWND ;
typedef size_t DWORD ;


 int add_cert_extension_detail (int ,struct detail_data*,TYPE_4__*) ;

__attribute__((used)) static void add_critical_extensions(HWND hwnd, struct detail_data *data)
{
    DWORD i;
    PCCERT_CONTEXT cert = data->pCertViewInfo->pCertContext;

    for (i = 0; i < cert->pCertInfo->cExtension; i++)
        if (cert->pCertInfo->rgExtension[i].fCritical)
            add_cert_extension_detail(hwnd, data,
             &cert->pCertInfo->rgExtension[i]);
}

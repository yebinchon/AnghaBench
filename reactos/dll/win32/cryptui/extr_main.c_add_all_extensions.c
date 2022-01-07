
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct detail_data {TYPE_1__* pCertViewInfo; } ;
struct TYPE_6__ {TYPE_2__* pCertInfo; } ;
struct TYPE_5__ {size_t cExtension; int * rgExtension; } ;
struct TYPE_4__ {TYPE_3__* pCertContext; } ;
typedef TYPE_3__* PCCERT_CONTEXT ;
typedef int HWND ;
typedef size_t DWORD ;


 int add_cert_extension_detail (int ,struct detail_data*,int *) ;

__attribute__((used)) static void add_all_extensions(HWND hwnd, struct detail_data *data)
{
    DWORD i;
    PCCERT_CONTEXT cert = data->pCertViewInfo->pCertContext;

    for (i = 0; i < cert->pCertInfo->cExtension; i++)
        add_cert_extension_detail(hwnd, data, &cert->pCertInfo->rgExtension[i]);
}

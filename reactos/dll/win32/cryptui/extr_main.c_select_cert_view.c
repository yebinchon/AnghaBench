
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int viewInfo ;
struct SelectCertData {int rgPropSheetPages; int cPropSheetPages; int rghStores; int cStores; int callbackData; scalar_t__ (* displayProc ) (int ,int ,int ) ;} ;
struct TYPE_4__ {int dwSize; int rgPropSheetPages; int cPropSheetPages; int rghStores; int cStores; int pCertContext; int hwndParent; } ;
typedef int PCCERT_CONTEXT ;
typedef int HWND ;
typedef TYPE_1__ CRYPTUI_VIEWCERTIFICATE_STRUCTW ;


 int CryptUIDlgViewCertificateW (TYPE_1__*,int *) ;
 int memset (TYPE_1__*,int ,int) ;
 scalar_t__ stub1 (int ,int ,int ) ;

__attribute__((used)) static void select_cert_view(HWND hwnd, PCCERT_CONTEXT cert, struct SelectCertData *data)
{
    CRYPTUI_VIEWCERTIFICATE_STRUCTW viewInfo;

    if (data->displayProc && data->displayProc(cert, hwnd, data->callbackData))
        return;
    memset(&viewInfo, 0, sizeof(viewInfo));
    viewInfo.dwSize = sizeof(viewInfo);
    viewInfo.hwndParent = hwnd;
    viewInfo.pCertContext = cert;
    viewInfo.cStores = data->cStores;
    viewInfo.rghStores = data->rghStores;
    viewInfo.cPropSheetPages = data->cPropSheetPages;
    viewInfo.rgPropSheetPages = data->rgPropSheetPages;

    CryptUIDlgViewCertificateW(&viewInfo, ((void*)0));
}

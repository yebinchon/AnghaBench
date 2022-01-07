
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pCertContext; } ;
typedef TYPE_1__* PCCRYPTUI_VIEWCERTIFICATE_STRUCTW ;
typedef int HWND ;


 int CERT_NAME_ISSUER_FLAG ;
 int IDS_ISSUER_HEADING ;
 int IDS_SUBJECT_HEADING ;
 int set_cert_info (int ,TYPE_1__*) ;
 int set_cert_name_string (int ,int ,int ,int ) ;
 int set_cert_validity_period (int ,int ) ;

__attribute__((used)) static void set_general_info(HWND hwnd,
 PCCRYPTUI_VIEWCERTIFICATE_STRUCTW pCertViewInfo)
{
    set_cert_info(hwnd, pCertViewInfo);
    set_cert_name_string(hwnd, pCertViewInfo->pCertContext, 0,
     IDS_SUBJECT_HEADING);
    set_cert_name_string(hwnd, pCertViewInfo->pCertContext,
     CERT_NAME_ISSUER_FLAG, IDS_ISSUER_HEADING);
    set_cert_validity_period(hwnd, pCertViewInfo->pCertContext);
}

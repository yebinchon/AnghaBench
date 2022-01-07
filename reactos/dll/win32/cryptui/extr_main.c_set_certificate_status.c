
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dwConfidence; scalar_t__ dwRevokedReason; } ;
typedef int HWND ;
typedef TYPE_1__ CRYPT_PROVIDER_CERT ;


 int CERT_CONFIDENCE_SIG ;
 int CERT_CONFIDENCE_TIME ;
 int CERT_CONFIDENCE_TIMENEST ;
 int EM_SETSEL ;
 int IDS_CERTIFICATE_BAD_SIGNATURE ;
 int IDS_CERTIFICATE_BAD_TIME ;
 int IDS_CERTIFICATE_BAD_TIMENEST ;
 int IDS_CERTIFICATE_REVOKED ;
 int IDS_CERTIFICATE_VALID ;
 int SendMessageW (int ,int ,int ,int) ;
 int add_string_resource_to_control (int ,int ) ;

__attribute__((used)) static void set_certificate_status(HWND hwnd, const CRYPT_PROVIDER_CERT *cert)
{

    SendMessageW(hwnd, EM_SETSEL, 0, -1);

    if (!(cert->dwConfidence & CERT_CONFIDENCE_SIG))
        add_string_resource_to_control(hwnd, IDS_CERTIFICATE_BAD_SIGNATURE);
    else if (!(cert->dwConfidence & CERT_CONFIDENCE_TIME))
        add_string_resource_to_control(hwnd, IDS_CERTIFICATE_BAD_TIME);
    else if (!(cert->dwConfidence & CERT_CONFIDENCE_TIMENEST))
        add_string_resource_to_control(hwnd, IDS_CERTIFICATE_BAD_TIMENEST);
    else if (cert->dwRevokedReason)
        add_string_resource_to_control(hwnd, IDS_CERTIFICATE_REVOKED);
    else
        add_string_resource_to_control(hwnd, IDS_CERTIFICATE_VALID);
}

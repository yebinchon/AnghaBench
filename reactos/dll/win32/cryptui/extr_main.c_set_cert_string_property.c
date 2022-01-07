
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_3__ {int cbData; int * pbData; } ;
typedef int PCCERT_CONTEXT ;
typedef scalar_t__* LPWSTR ;
typedef int DWORD ;
typedef TYPE_1__ CRYPT_DATA_BLOB ;
typedef int BYTE ;


 int CertSetCertificateContextProperty (int ,int ,int ,TYPE_1__*) ;
 int lstrlenW (scalar_t__*) ;

__attribute__((used)) static void set_cert_string_property(PCCERT_CONTEXT cert, DWORD prop,
 LPWSTR str)
{
    if (str && *str)
    {
        CRYPT_DATA_BLOB blob;

        blob.pbData = (BYTE *)str;
        blob.cbData = (lstrlenW(str) + 1) * sizeof(WCHAR);
        CertSetCertificateContextProperty(cert, prop, 0, &blob);
    }
    else
        CertSetCertificateContextProperty(cert, prop, 0, ((void*)0));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_7__ {TYPE_2__* pCertInfo; } ;
struct TYPE_5__ {int cbData; int pbData; } ;
struct TYPE_6__ {TYPE_1__ SerialNumber; } ;
typedef TYPE_3__* PCCERT_CONTEXT ;


 int * format_hex_string (int ,int ) ;

__attribute__((used)) static WCHAR *field_format_serial_number(PCCERT_CONTEXT cert)
{
    return format_hex_string(cert->pCertInfo->SerialNumber.pbData,
     cert->pCertInfo->SerialNumber.cbData);
}

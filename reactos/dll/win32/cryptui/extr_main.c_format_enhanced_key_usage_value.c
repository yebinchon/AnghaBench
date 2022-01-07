
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_4__ {int cbData; void* pbData; } ;
struct TYPE_5__ {TYPE_1__ Value; int fCritical; scalar_t__ pszObjId; } ;
typedef scalar_t__ LPSTR ;
typedef int DWORD ;
typedef TYPE_2__ CERT_EXTENSION ;


 int FALSE ;
 scalar_t__ X509_ENHANCED_KEY_USAGE ;
 int * crypt_format_extension (TYPE_2__*,int ) ;

__attribute__((used)) static WCHAR *format_enhanced_key_usage_value(void *pb, DWORD cb)
{
    CERT_EXTENSION ext;

    ext.pszObjId = (LPSTR)X509_ENHANCED_KEY_USAGE;
    ext.fCritical = FALSE;
    ext.Value.pbData = pb;
    ext.Value.cbData = cb;
    return crypt_format_extension(&ext, 0);
}

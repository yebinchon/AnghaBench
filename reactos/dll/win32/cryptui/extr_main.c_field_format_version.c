
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_5__ {TYPE_1__* pCertInfo; } ;
struct TYPE_4__ {char* dwVersion; } ;
typedef TYPE_2__* PCCERT_CONTEXT ;


 int GetProcessHeap () ;
 char* HeapAlloc (int ,int ,int) ;
 int swprintf (char*,char const*,char*) ;

__attribute__((used)) static WCHAR *field_format_version(PCCERT_CONTEXT cert)
{
    static const WCHAR fmt[] = { 'V','%','d',0 };
    WCHAR *buf = HeapAlloc(GetProcessHeap(), 0, 12 * sizeof(WCHAR));

    if (buf)
        swprintf(buf, fmt, cert->pCertInfo->dwVersion);
    return buf;
}

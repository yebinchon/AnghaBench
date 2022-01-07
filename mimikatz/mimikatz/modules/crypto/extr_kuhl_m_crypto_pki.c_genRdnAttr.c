
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_4__ {int cbData; scalar_t__ pbData; } ;
struct TYPE_5__ {TYPE_1__ Value; int dwValueType; scalar_t__ pszObjId; } ;
typedef TYPE_2__* PCERT_RDN_ATTR ;
typedef scalar_t__ PBYTE ;
typedef scalar_t__ LPSTR ;
typedef scalar_t__ LPCWSTR ;
typedef int BOOL ;


 int CERT_RDN_UNICODE_STRING ;
 int FALSE ;
 int TRUE ;
 int lstrlenW (scalar_t__) ;

BOOL genRdnAttr(PCERT_RDN_ATTR attr, LPSTR oid, LPCWSTR name)
{
 BOOL status = FALSE;
 if(attr && name && oid)
 {
  attr->pszObjId = oid;
  attr->dwValueType = CERT_RDN_UNICODE_STRING;
  attr->Value.cbData = lstrlenW(name) * sizeof(wchar_t);
  attr->Value.pbData = (PBYTE) name;
  status = TRUE;
 }
 return status;
}

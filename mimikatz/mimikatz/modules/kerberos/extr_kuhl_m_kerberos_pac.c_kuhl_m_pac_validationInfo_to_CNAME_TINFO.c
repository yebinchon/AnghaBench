
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int wchar_t ;
typedef scalar_t__ USHORT ;
struct TYPE_3__ {int Name; scalar_t__ NameLength; int ClientId; } ;
typedef TYPE_1__* PPAC_CLIENT_INFO ;
typedef int * PFILETIME ;
typedef int PAC_CLIENT_INFO ;
typedef int LPCWSTR ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 int LPTR ;
 scalar_t__ LocalAlloc (int ,int) ;
 int RtlCopyMemory (int ,int ,int) ;
 int TRUE ;
 int lstrlen (int ) ;

BOOL kuhl_m_pac_validationInfo_to_CNAME_TINFO(PFILETIME authtime, LPCWSTR clientname, PPAC_CLIENT_INFO * pacClientInfo, DWORD * pacClientInfoLength)
{
 BOOL status = FALSE;
 DWORD len = lstrlen(clientname) * sizeof(wchar_t);

 *pacClientInfoLength = sizeof(PAC_CLIENT_INFO) + len - sizeof(wchar_t);
 if(*pacClientInfo = (PPAC_CLIENT_INFO) LocalAlloc(LPTR, *pacClientInfoLength))
 {
  (*pacClientInfo)->ClientId = *authtime;
  (*pacClientInfo)->NameLength = (USHORT) len;
  RtlCopyMemory((*pacClientInfo)->Name, clientname, len);
  status = TRUE;
 }
 return status;
}

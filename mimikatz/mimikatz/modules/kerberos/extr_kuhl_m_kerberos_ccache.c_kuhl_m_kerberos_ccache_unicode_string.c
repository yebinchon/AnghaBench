
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int wchar_t ;
typedef int USHORT ;
struct TYPE_7__ {int Length; int MaximumLength; scalar_t__ Buffer; } ;
struct TYPE_6__ {int Length; int MaximumLength; scalar_t__ Buffer; } ;
typedef TYPE_1__ STRING ;
typedef scalar_t__ PWSTR ;
typedef TYPE_2__* PUNICODE_STRING ;
typedef int * PDWORD ;
typedef scalar_t__ PCHAR ;
typedef scalar_t__ PBYTE ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 int LPTR ;
 scalar_t__ LocalAlloc (int ,int) ;
 int LocalFree (scalar_t__) ;
 int NT_SUCCESS (int ) ;
 int RtlAnsiStringToUnicodeString (TYPE_2__*,TYPE_1__*,int ) ;
 scalar_t__ _byteswap_ulong (int ) ;

BOOL kuhl_m_kerberos_ccache_unicode_string(PBYTE *data, PUNICODE_STRING ustring)
{
 BOOL status = FALSE;
 STRING sName;
 sName.Length = sName.MaximumLength = (USHORT) _byteswap_ulong(*(PDWORD) *data); *data += sizeof(DWORD);
 sName.Buffer = (PCHAR) *data; *data += sName.Length;
 ustring->Length = sName.Length * sizeof(wchar_t);
 ustring->MaximumLength = ustring->Length + sizeof(wchar_t);
 if(ustring->Buffer = (PWSTR) LocalAlloc(LPTR, ustring->MaximumLength))
 {
  if(!(status = NT_SUCCESS(RtlAnsiStringToUnicodeString(ustring, &sName, FALSE))))
   LocalFree(ustring->Buffer);
 }
 return status;
}

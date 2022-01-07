
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* USHORT ;
typedef int UNICODE_STRING ;
struct TYPE_3__ {int * Names; void* NameType; void* NameCount; } ;
typedef int * PUNICODE_STRING ;
typedef TYPE_1__* PKERB_EXTERNAL_NAME ;
typedef int * PDWORD ;
typedef scalar_t__ PBYTE ;
typedef int KERB_EXTERNAL_NAME ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 int LPTR ;
 scalar_t__ LocalAlloc (int ,int) ;
 int _byteswap_ulong (int ) ;
 int kuhl_m_kerberos_ccache_unicode_string (scalar_t__*,int *) ;

BOOL kuhl_m_kerberos_ccache_externalname(PBYTE *data, PKERB_EXTERNAL_NAME * name, PUNICODE_STRING realm)
{
 BOOL status = FALSE;
 DWORD i, count = _byteswap_ulong(*(PDWORD) (*data + sizeof(DWORD)));
 *name = ((void*)0);
 if(count)
 {
  if(*name = (PKERB_EXTERNAL_NAME) LocalAlloc(LPTR, sizeof(KERB_EXTERNAL_NAME) + ((count - 1) * sizeof(UNICODE_STRING))))
  {
   (*name)->NameCount = (USHORT) count;
   (*name)->NameType = (USHORT) _byteswap_ulong(*(PDWORD) *data);
   *data += 2 * sizeof(DWORD);

   status = kuhl_m_kerberos_ccache_unicode_string(data, realm);
   for(i = 0; i < count; i++)
    status &= kuhl_m_kerberos_ccache_unicode_string(data, &(*name)->Names[i]);
  }
 }
 return status;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_8__ {int TicketFlags; TYPE_2__* ServiceName; TYPE_1__* ClientName; } ;
struct TYPE_7__ {int * Names; } ;
struct TYPE_6__ {int * Names; } ;
typedef TYPE_3__* PKIWI_KERBEROS_TICKET ;
typedef char* LPCWSTR ;
typedef int DWORD ;
typedef int BOOL ;


 int LPTR ;
 scalar_t__ LocalAlloc (int ,size_t) ;
 scalar_t__ LocalFree (int *) ;
 int kuhl_m_kerberos_ticket_isLongFilename (TYPE_3__*) ;
 int kull_m_file_cleanFilename (int *) ;
 scalar_t__ swprintf_s (int *,size_t,char*,int const,int,char*,...) ;

wchar_t * kuhl_m_kerberos_ccache_generateFileName(const DWORD index, PKIWI_KERBEROS_TICKET ticket, LPCWSTR ext)
{
 wchar_t * buffer;
 size_t charCount = 0x1000;
 BOOL isLong = kuhl_m_kerberos_ticket_isLongFilename(ticket);

 if(buffer = (wchar_t *) LocalAlloc(LPTR, charCount * sizeof(wchar_t)))
 {
  if(isLong)
   isLong = swprintf_s(buffer, charCount, L"%u-%08x-%wZ@%wZ-%wZ.%s", index, ticket->TicketFlags, &ticket->ClientName->Names[0], &ticket->ServiceName->Names[0], &ticket->ServiceName->Names[1], ext) > 0;
  else
   isLong = swprintf_s(buffer, charCount, L"%u-%08x.%s", index, ticket->TicketFlags, ext) > 0;

  if(isLong)
   kull_m_file_cleanFilename(buffer);
  else
   buffer = (wchar_t *) LocalFree(buffer);
 }
 return buffer;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int Length; scalar_t__ Value; } ;
struct TYPE_7__ {int Length; scalar_t__ Value; } ;
struct TYPE_6__ {scalar_t__ Buffer; } ;
struct TYPE_9__ {TYPE_3__ Ticket; int TicketKvno; int TicketEncType; TYPE_2__ Key; int KeyType; int TicketFlags; TYPE_1__ Description; int AltTargetDomainName; int ClientName; int TargetDomainName; int TargetName; int DomainName; int ServiceName; int RenewUntil; int EndTime; int StartTime; } ;
typedef TYPE_4__* PKIWI_KERBEROS_TICKET ;
typedef scalar_t__ BOOL ;


 int PRINT_ERROR_AUTO (char*) ;
 int kprintf (char*,...) ;
 int kuhl_m_kerberos_ticket_displayExternalName (char*,int ,int *) ;
 int kuhl_m_kerberos_ticket_displayFlags (int ) ;
 int kuhl_m_kerberos_ticket_etype (int ) ;
 int kull_m_string_displayLocalFileTime (int *) ;
 int kull_m_string_wprintf_hex (scalar_t__,int ,int) ;

void kuhl_m_kerberos_ticket_display(PKIWI_KERBEROS_TICKET ticket, BOOL withKey, BOOL encodedTicketToo)
{
 kprintf(L"\n\t   Start/End/MaxRenew: ");
 kull_m_string_displayLocalFileTime(&ticket->StartTime); kprintf(L" ; ");
 kull_m_string_displayLocalFileTime(&ticket->EndTime); kprintf(L" ; ");
 kull_m_string_displayLocalFileTime(&ticket->RenewUntil);

 kuhl_m_kerberos_ticket_displayExternalName(L"\n\t   Service Name ", ticket->ServiceName, &ticket->DomainName);
 kuhl_m_kerberos_ticket_displayExternalName(L"\n\t   Target Name  ", ticket->TargetName, &ticket->TargetDomainName);
 kuhl_m_kerberos_ticket_displayExternalName(L"\n\t   Client Name  ", ticket->ClientName, &ticket->AltTargetDomainName);
 if(ticket->Description.Buffer)
  kprintf(L" ( %wZ )", &ticket->Description);
 kprintf(L"\n\t   Flags %08x    : ", ticket->TicketFlags);
 kuhl_m_kerberos_ticket_displayFlags(ticket->TicketFlags);
 if(withKey)
 {
  kprintf(L"\n\t   Session Key       : 0x%08x - %s", ticket->KeyType, kuhl_m_kerberos_ticket_etype(ticket->KeyType));
  if(ticket->Key.Value)
  {
   kprintf(L"\n\t     ");
   kull_m_string_wprintf_hex(ticket->Key.Value, ticket->Key.Length, 0);
  }
 }
 kprintf(L"\n\t   Ticket            : 0x%08x - %s ; kvno = %u", ticket->TicketEncType, kuhl_m_kerberos_ticket_etype(ticket->TicketEncType), ticket->TicketKvno);

 if(encodedTicketToo)
 {
  kprintf(L"\n\t     ");
  if(ticket->Ticket.Value)
   kull_m_string_wprintf_hex(ticket->Ticket.Value, ticket->Ticket.Length, 1);
  else PRINT_ERROR_AUTO(L"NULL Ticket Value !");
 }
 else kprintf(L"\t[...]");
}

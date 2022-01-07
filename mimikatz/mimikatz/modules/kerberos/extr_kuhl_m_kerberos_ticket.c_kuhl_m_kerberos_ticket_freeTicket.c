
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Ticket; int Key; int Description; int AltTargetDomainName; int ClientName; int TargetDomainName; int TargetName; int DomainName; int ServiceName; } ;
typedef TYPE_1__* PKIWI_KERBEROS_TICKET ;


 int LocalFree (TYPE_1__*) ;
 int kuhl_m_kerberos_ticket_freeExternalName (int ) ;
 int kuhl_m_kerberos_ticket_freeKiwiKerberosBuffer (int *) ;
 int kull_m_string_freeUnicodeStringBuffer (int *) ;

void kuhl_m_kerberos_ticket_freeTicket(PKIWI_KERBEROS_TICKET ticket)
{
 if(ticket)
 {
  kuhl_m_kerberos_ticket_freeExternalName(ticket->ServiceName);
  kull_m_string_freeUnicodeStringBuffer(&ticket->DomainName);
  kuhl_m_kerberos_ticket_freeExternalName(ticket->TargetName);
  kull_m_string_freeUnicodeStringBuffer(&ticket->TargetDomainName);
  kuhl_m_kerberos_ticket_freeExternalName(ticket->ClientName);
  kull_m_string_freeUnicodeStringBuffer(&ticket->AltTargetDomainName);
  kull_m_string_freeUnicodeStringBuffer(&ticket->Description);
  kuhl_m_kerberos_ticket_freeKiwiKerberosBuffer(&ticket->Key);
  kuhl_m_kerberos_ticket_freeKiwiKerberosBuffer(&ticket->Ticket);
  LocalFree(ticket);
 }
}

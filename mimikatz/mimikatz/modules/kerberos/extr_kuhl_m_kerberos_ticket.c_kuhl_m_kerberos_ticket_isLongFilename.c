
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* ServiceName; TYPE_1__* ClientName; } ;
struct TYPE_6__ {scalar_t__ NameType; int NameCount; } ;
struct TYPE_5__ {scalar_t__ NameType; int NameCount; } ;
typedef TYPE_3__* PKIWI_KERBEROS_TICKET ;
typedef int BOOL ;


 scalar_t__ KRB_NT_PRINCIPAL ;
 scalar_t__ KRB_NT_SRV_HST ;

BOOL kuhl_m_kerberos_ticket_isLongFilename(PKIWI_KERBEROS_TICKET ticket)
{
 return ticket && (ticket->ClientName) && (ticket->ClientName->NameType == KRB_NT_PRINCIPAL) && (ticket->ClientName->NameCount == 1) && (ticket->ServiceName) && ((ticket->ServiceName->NameType >= KRB_NT_PRINCIPAL) && (ticket->ServiceName->NameType <= KRB_NT_SRV_HST)) && (ticket->ServiceName->NameCount > 1);
}

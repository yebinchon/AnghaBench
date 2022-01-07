
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int DWORD ;


 int ARRAYSIZE (int *) ;
 int * TicketFlagsToStrings ;
 int kprintf (char*,int ) ;

void kuhl_m_kerberos_ticket_displayFlags(ULONG flags)
{
 DWORD i;
 for(i = 0; i < ARRAYSIZE(TicketFlagsToStrings); i++)
  if((flags >> (i + 16)) & 1)
   kprintf(L"%s ; ", TicketFlagsToStrings[i]);
}

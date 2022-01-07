
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ Value; } ;
typedef scalar_t__ PUCHAR ;
typedef TYPE_1__* PKIWI_KERBEROS_BUFFER ;


 scalar_t__ LocalFree (scalar_t__) ;

void kuhl_m_kerberos_ticket_freeKiwiKerberosBuffer(PKIWI_KERBEROS_BUFFER pBuffer)
{
 if(pBuffer->Value)
  pBuffer->Value = (PUCHAR) LocalFree(pBuffer->Value);
}

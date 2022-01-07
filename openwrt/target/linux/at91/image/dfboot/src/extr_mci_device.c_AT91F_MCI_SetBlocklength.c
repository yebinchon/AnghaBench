
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AT91PS_MciDevice ;


 int AT91C_SET_BLOCKLEN_CMD ;
 int AT91F_MCI_SendCommand (int ,int ,unsigned int) ;

int AT91F_MCI_SetBlocklength(AT91PS_MciDevice pMCI_Device,unsigned int length)
{
    return( AT91F_MCI_SendCommand(pMCI_Device, AT91C_SET_BLOCKLEN_CMD, length) );
}

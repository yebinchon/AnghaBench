
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int* MCI_RSPR; } ;
typedef int AT91PS_MciDevice ;


 TYPE_1__* AT91C_BASE_MCI ;
 int AT91C_CMD_SEND_ERROR ;
 scalar_t__ AT91C_CMD_SEND_OK ;
 int AT91C_SEND_CSD_CMD ;
 scalar_t__ AT91F_MCI_SendCommand (int ,int ,unsigned int) ;

int AT91F_MCI_GetCSD (AT91PS_MciDevice pMCI_Device, unsigned int relative_card_address , unsigned int * response)
{

  if(AT91F_MCI_SendCommand(pMCI_Device,
          AT91C_SEND_CSD_CMD,
          (relative_card_address << 16)) != AT91C_CMD_SEND_OK)
  return AT91C_CMD_SEND_ERROR;

    response[0] = AT91C_BASE_MCI->MCI_RSPR[0];
    response[1] = AT91C_BASE_MCI->MCI_RSPR[1];
    response[2] = AT91C_BASE_MCI->MCI_RSPR[2];
    response[3] = AT91C_BASE_MCI->MCI_RSPR[3];

    return AT91C_CMD_SEND_OK;
}

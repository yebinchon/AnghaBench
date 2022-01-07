
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT8 ;
typedef scalar_t__ UINT32 ;
typedef int UINT16 ;
struct TYPE_2__ {scalar_t__ (* ReadWlanInterruptPin ) () ;int * pucTxCommandBuffer; int (* WriteWlanPin ) (int ) ;scalar_t__ pucReceivedData; scalar_t__ usEventOrDataReceived; scalar_t__ slTransmitDataError; scalar_t__ usRxDataPending; scalar_t__ usBufferSize; scalar_t__ usSlBufferLength; scalar_t__ usNumberOfFreeBuffers; scalar_t__ usRxEventOpcode; scalar_t__ NumberOfReleasedPackets; scalar_t__ NumberOfSentPackets; } ;


 int HCI_CMND_READ_BUFFER_SIZE ;
 int SimpleLinkWaitEvent (int ,int ) ;
 int SimpleLink_Init_Start (int ) ;
 int SpiOpen (int ) ;
 int SpiReceiveHandler ;
 scalar_t__ TIMEOUT ;
 int WLAN_ENABLE ;
 int hci_command_send (int ,int *,int ) ;
 scalar_t__ stub1 () ;
 int stub2 (int ) ;
 scalar_t__ stub3 () ;
 scalar_t__ stub4 () ;
 scalar_t__ stub5 () ;
 TYPE_1__ tSLInformation ;
 scalar_t__ wlan_tx_buffer ;

int wlan_start(UINT16 usPatchesAvailableAtHost)
{

 UINT32 ulSpiIRQState;
 UINT32 wlan_timeout;

 tSLInformation.NumberOfSentPackets = 0;
 tSLInformation.NumberOfReleasedPackets = 0;
 tSLInformation.usRxEventOpcode = 0;
 tSLInformation.usNumberOfFreeBuffers = 0;
 tSLInformation.usSlBufferLength = 0;
 tSLInformation.usBufferSize = 0;
 tSLInformation.usRxDataPending = 0;
 tSLInformation.slTransmitDataError = 0;
 tSLInformation.usEventOrDataReceived = 0;
 tSLInformation.pucReceivedData = 0;


 tSLInformation.pucTxCommandBuffer = (UINT8 *)wlan_tx_buffer;


 SpiOpen(SpiReceiveHandler);


 ulSpiIRQState = tSLInformation.ReadWlanInterruptPin();


 tSLInformation.WriteWlanPin( WLAN_ENABLE );

    wlan_timeout = TIMEOUT;
 if (ulSpiIRQState) {

  while(tSLInformation.ReadWlanInterruptPin() != 0 && --wlan_timeout)
  {
  }
 }
 else
 {

  while(tSLInformation.ReadWlanInterruptPin() == 0 && --wlan_timeout)
  {
  }

        if (wlan_timeout == 0) {
            return -1;
        }

        wlan_timeout = TIMEOUT;
  while(tSLInformation.ReadWlanInterruptPin() != 0 && --wlan_timeout)
  {
  }
 }

    if (wlan_timeout ==0) {
        return -1;
    }

 SimpleLink_Init_Start(usPatchesAvailableAtHost);


 hci_command_send(HCI_CMND_READ_BUFFER_SIZE, tSLInformation.pucTxCommandBuffer, 0);
 SimpleLinkWaitEvent(HCI_CMND_READ_BUFFER_SIZE, 0);

    return 0;
}

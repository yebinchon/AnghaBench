
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT8 ;
typedef int UINT16 ;


 scalar_t__ HCI_TYPE_CMND ;
 scalar_t__ SIMPLE_LINK_HCI_CMND_HEADER_SIZE ;
 int SPI_HEADER_SIZE ;
 int SpiWrite (scalar_t__*,scalar_t__) ;
 scalar_t__* UINT16_TO_STREAM (scalar_t__*,int ) ;
 int UINT8_TO_STREAM (scalar_t__*,scalar_t__) ;

UINT16 hci_command_send(UINT16 usOpcode, UINT8 *pucBuff, UINT8 ucArgsLength)
{
 UINT8 *stream;

 stream = (pucBuff + SPI_HEADER_SIZE);

 UINT8_TO_STREAM(stream, HCI_TYPE_CMND);
 stream = UINT16_TO_STREAM(stream, usOpcode);
 UINT8_TO_STREAM(stream, ucArgsLength);


 SpiWrite(pucBuff, ucArgsLength + SIMPLE_LINK_HCI_CMND_HEADER_SIZE);

 return(0);
}

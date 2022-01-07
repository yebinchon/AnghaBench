
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__* ucArgs ;
typedef scalar_t__ UINT8 ;
typedef scalar_t__ UINT16 ;
typedef int INT32 ;


 int ESUCCESS ;
 scalar_t__ HCI_TYPE_DATA ;
 scalar_t__ SIMPLE_LINK_HCI_DATA_HEADER_SIZE ;
 scalar_t__ SPI_HEADER_SIZE ;
 int SpiWrite (scalar_t__*,scalar_t__) ;
 scalar_t__* UINT16_TO_STREAM (scalar_t__*,scalar_t__) ;
 int UINT8_TO_STREAM (scalar_t__*,scalar_t__) ;

INT32 hci_data_send(UINT8 ucOpcode,
 UINT8 *ucArgs,
 UINT16 usArgsLength,
 UINT16 usDataLength,
 const UINT8 *ucTail,
 UINT16 usTailLength)
{
 UINT8 *stream;

 stream = ((ucArgs) + SPI_HEADER_SIZE);

 UINT8_TO_STREAM(stream, HCI_TYPE_DATA);
 UINT8_TO_STREAM(stream, ucOpcode);
 UINT8_TO_STREAM(stream, usArgsLength);
 stream = UINT16_TO_STREAM(stream, usArgsLength + usDataLength + usTailLength);


 SpiWrite(ucArgs, SIMPLE_LINK_HCI_DATA_HEADER_SIZE + usArgsLength + usDataLength + usTailLength);

 return(ESUCCESS);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usTransLength ;
typedef int UINT8 ;
typedef int UINT16 ;
typedef int CHAR ;


 int HCI_PATCH_HEADER_SIZE ;
 int HCI_TYPE_PATCH ;
 int SIMPLE_LINK_HCI_PATCH_HEADER_SIZE ;
 int SL_PATCH_PORTION_SIZE ;
 int SPI_HEADER_SIZE ;
 int SpiWrite (int *,int) ;
 int * UINT16_TO_STREAM (int *,int) ;
 int UINT8_TO_STREAM (int *,int ) ;
 int memcpy (int *,int *,int) ;

void hci_patch_send(UINT8 ucOpcode, UINT8 *pucBuff, CHAR *patch, UINT16 usDataLength)
{
 UINT8 *data_ptr = (pucBuff + SPI_HEADER_SIZE);
 UINT16 usTransLength;
 UINT8 *stream = (pucBuff + SPI_HEADER_SIZE);

 UINT8_TO_STREAM(stream, HCI_TYPE_PATCH);
 UINT8_TO_STREAM(stream, ucOpcode);
 stream = UINT16_TO_STREAM(stream, usDataLength + SIMPLE_LINK_HCI_PATCH_HEADER_SIZE);

 if (usDataLength <= SL_PATCH_PORTION_SIZE)
 {
  UINT16_TO_STREAM(stream, usDataLength);
  stream = UINT16_TO_STREAM(stream, usDataLength);
  memcpy((pucBuff + SPI_HEADER_SIZE) + HCI_PATCH_HEADER_SIZE, patch, usDataLength);


  SpiWrite(pucBuff, usDataLength + HCI_PATCH_HEADER_SIZE);
 }
 else
 {

  usTransLength = (usDataLength/SL_PATCH_PORTION_SIZE);
  UINT16_TO_STREAM(stream, usDataLength + SIMPLE_LINK_HCI_PATCH_HEADER_SIZE + usTransLength*SIMPLE_LINK_HCI_PATCH_HEADER_SIZE);
  stream = UINT16_TO_STREAM(stream, SL_PATCH_PORTION_SIZE);
  memcpy(pucBuff + SPI_HEADER_SIZE + HCI_PATCH_HEADER_SIZE, patch, SL_PATCH_PORTION_SIZE);
  usDataLength -= SL_PATCH_PORTION_SIZE;
  patch += SL_PATCH_PORTION_SIZE;


  SpiWrite(pucBuff, SL_PATCH_PORTION_SIZE + HCI_PATCH_HEADER_SIZE);

  while (usDataLength)
  {
   if (usDataLength <= SL_PATCH_PORTION_SIZE)
   {
    usTransLength = usDataLength;
    usDataLength = 0;

   }
   else
   {
    usTransLength = SL_PATCH_PORTION_SIZE;
    usDataLength -= usTransLength;
   }

   *(UINT16 *)data_ptr = usTransLength;
   memcpy(data_ptr + SIMPLE_LINK_HCI_PATCH_HEADER_SIZE, patch, usTransLength);
   patch += usTransLength;


   SpiWrite((UINT8 *)data_ptr, usTransLength + sizeof(usTransLength));
  }
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AT91PS_MciDevice ;


 int AT91C_MCI_TIMEOUT ;
 int AT91F_MCIDeviceWaitReady (int ) ;
 int AT91F_MCI_ReadBlock (int *,int,unsigned int*,int) ;
 int BUFFER_SIZE_MCI_DEVICE ;
 int MCI_Device ;
 unsigned int swab32 (unsigned int) ;

int AT91F_MCI_ReadBlockSwab(
 AT91PS_MciDevice pMCI_Device,
 int src,
 unsigned int *databuffer,
 int sizeToRead)
{
 int i;
 unsigned char *buf = (unsigned char *)databuffer;


 for(i=0;i<BUFFER_SIZE_MCI_DEVICE;i++)
  *buf++ = 0x00;
 AT91F_MCI_ReadBlock(&MCI_Device,src,databuffer,sizeToRead);


 AT91F_MCIDeviceWaitReady(AT91C_MCI_TIMEOUT);

 {
  int index;
  unsigned int *uiBuffer = databuffer;

  for(index = 0; index < 512/4; index++)
   uiBuffer[index] = swab32(uiBuffer[index]);
 }
 return(1);
}

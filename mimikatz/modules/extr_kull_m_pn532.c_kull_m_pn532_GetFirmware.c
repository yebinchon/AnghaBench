
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT16 ;
typedef int PKULL_M_PN532_COMM ;
typedef int BYTE ;
typedef int BOOL ;


 int FALSE ;
 int PN532_CMD_GetFirmwareVersion ;
 scalar_t__ kull_m_pn532_sendrecv (int ,int ,int *,int ,int *,int*) ;

BOOL kull_m_pn532_GetFirmware(PKULL_M_PN532_COMM comm, BYTE firmwareInfo[4])
{
 BOOL status = FALSE;
 UINT16 wRet = 4;
 if(kull_m_pn532_sendrecv(comm, PN532_CMD_GetFirmwareVersion, ((void*)0), 0, firmwareInfo, &wRet))
  status = (wRet == 4);
 return status;
}

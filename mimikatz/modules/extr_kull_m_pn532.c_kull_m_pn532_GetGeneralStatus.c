
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ret ;
typedef int UINT16 ;
typedef int PKULL_M_PN532_COMM ;
typedef int BYTE ;
typedef int BOOL ;


 int FALSE ;
 int PN532_CMD_GetGeneralStatus ;
 int kull_m_pn532_sendrecv (int ,int ,int *,int ,int *,int*) ;

BOOL kull_m_pn532_GetGeneralStatus(PKULL_M_PN532_COMM comm )
{
 BOOL status = FALSE;
 BYTE ret[3 + 4 + 4 + 1];
 UINT16 wRet = sizeof(ret);
 kull_m_pn532_sendrecv(comm, PN532_CMD_GetGeneralStatus, ((void*)0), 0, ret, &wRet);
 return status;
}

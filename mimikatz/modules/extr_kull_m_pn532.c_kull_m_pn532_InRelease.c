
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ret ;
typedef int UINT16 ;
typedef int Tg ;
typedef int PKULL_M_PN532_COMM ;
typedef int BYTE ;
typedef int BOOL ;


 int FALSE ;
 int PN532_CMD_InRelease ;
 scalar_t__ kull_m_pn532_sendrecv (int ,int ,int const*,int,int *,int*) ;

BOOL kull_m_pn532_InRelease(PKULL_M_PN532_COMM comm, const BYTE Tg)
{
 BOOL status = FALSE;
 BYTE ret;
 UINT16 wOut = sizeof(ret);
 if(kull_m_pn532_sendrecv(comm, PN532_CMD_InRelease, &Tg, sizeof(Tg), &ret, &wOut))
  status = !ret;
 return status;
}

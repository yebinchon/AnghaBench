
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dataOut ;
typedef int dataIn ;
typedef int UINT16 ;
typedef int PKULL_M_PN532_COMM ;
typedef int BYTE ;


 int PN532_CMD_TgResponseToInitiator ;
 int PN532_MAX_LEN ;
 int kull_m_pn532_sendrecv (int ,int ,int*,int,int*,int*) ;

void kull_m_pn532_TgResponseToInitiator(PKULL_M_PN532_COMM comm)
{
 BYTE dataIn[3] = {0x01, 0x20, 0x01};
 BYTE dataOut[PN532_MAX_LEN - 2];
 UINT16 wOut = sizeof(dataOut);

 kull_m_pn532_sendrecv(comm, PN532_CMD_TgResponseToInitiator, dataIn, sizeof(dataIn), dataOut, &wOut);
}

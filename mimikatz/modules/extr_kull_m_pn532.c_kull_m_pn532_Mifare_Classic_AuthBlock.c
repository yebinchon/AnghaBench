
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int dataOut ;
typedef int UINT16 ;
struct TYPE_7__ {scalar_t__ Data; } ;
struct TYPE_6__ {int const member_1; int const member_0; } ;
struct TYPE_9__ {TYPE_2__ DataOut; TYPE_1__ member_1; int member_0; } ;
struct TYPE_8__ {int const* NFCID1; int Tg; } ;
typedef TYPE_3__* PPN532_TARGET_TYPE_A ;
typedef TYPE_4__ PN532_DATA_EXCHANGE_MIFARE ;
typedef int PKULL_M_PN532_COMM ;
typedef int PBYTE ;
typedef int BYTE ;
typedef int BOOL ;


 int FALSE ;
 scalar_t__ MIFARE_CLASSIC_KEY_SIZE ;
 scalar_t__ MIFARE_CLASSIC_UID_SIZE ;
 int PN532_CMD_InDataExchange ;
 int RtlCopyMemory (scalar_t__,int const*,scalar_t__) ;
 scalar_t__ kull_m_pn532_sendrecv (int ,int ,int ,int,int *,int*) ;

BOOL kull_m_pn532_Mifare_Classic_AuthBlock(PKULL_M_PN532_COMM comm, PPN532_TARGET_TYPE_A target, const BYTE authKey, const BYTE blockId, const BYTE key[MIFARE_CLASSIC_KEY_SIZE])
{
 BOOL status = FALSE;
 PN532_DATA_EXCHANGE_MIFARE authBlock = {target->Tg, {authKey, blockId}};
 BYTE dataOut;
 UINT16 wOut = sizeof(dataOut);
 RtlCopyMemory(authBlock.DataOut.Data, key, MIFARE_CLASSIC_KEY_SIZE);
 RtlCopyMemory(authBlock.DataOut.Data + MIFARE_CLASSIC_KEY_SIZE, target->NFCID1, MIFARE_CLASSIC_UID_SIZE );
 if(kull_m_pn532_sendrecv(comm, PN532_CMD_InDataExchange, (PBYTE) &authBlock, 13, &dataOut, &wOut))
  status = !dataOut;
 return status;
}

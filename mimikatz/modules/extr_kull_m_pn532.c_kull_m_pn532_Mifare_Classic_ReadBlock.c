
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int dataOut ;
typedef int UINT16 ;
struct TYPE_11__ {int data; } ;
struct TYPE_8__ {int const member_1; int member_0; } ;
struct TYPE_10__ {TYPE_1__ member_1; int member_0; } ;
struct TYPE_9__ {int Tg; } ;
typedef TYPE_2__* PPN532_TARGET_TYPE_A ;
typedef TYPE_3__ PN532_DATA_EXCHANGE_MIFARE ;
typedef TYPE_4__* PMIFARE_CLASSIC_RAW_BLOCK ;
typedef int PKULL_M_PN532_COMM ;
typedef int PBYTE ;
typedef int MIFARE_CLASSIC_RAW_BLOCK ;
typedef int BYTE ;
typedef int BOOL ;


 int FALSE ;
 int MIFARE_CLASSIC_BLOCK_SIZE ;
 int MIFARE_CLASSIC_CMD_READ ;
 int PN532_CMD_InDataExchange ;
 int RtlCopyMemory (int ,int *,int) ;
 int RtlZeroMemory (TYPE_4__*,int) ;
 scalar_t__ kull_m_pn532_sendrecv (int ,int ,int ,int,int *,int*) ;

BOOL kull_m_pn532_Mifare_Classic_ReadBlock(PKULL_M_PN532_COMM comm, PPN532_TARGET_TYPE_A target, const BYTE blockId, PMIFARE_CLASSIC_RAW_BLOCK block)
{
 BOOL status = FALSE;
 PN532_DATA_EXCHANGE_MIFARE readBlock = {target->Tg, {MIFARE_CLASSIC_CMD_READ, blockId}};
 BYTE dataOut[MIFARE_CLASSIC_BLOCK_SIZE + 1];
 UINT16 wOut = sizeof(dataOut);
 RtlZeroMemory(block, sizeof(MIFARE_CLASSIC_RAW_BLOCK));
 if(kull_m_pn532_sendrecv(comm, PN532_CMD_InDataExchange, (PBYTE) &readBlock, 3, dataOut, &wOut))
  if(status = !dataOut[0])
   RtlCopyMemory(block->data, dataOut + 1, wOut - 1);
 return status;
}

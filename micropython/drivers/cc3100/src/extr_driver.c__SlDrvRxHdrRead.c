
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int _u8 ;
typedef size_t _u32 ;
typedef size_t _u16 ;
typedef int _SlReturnVal_t ;
struct TYPE_6__ {int DoubleSyncPattern; } ;
struct TYPE_5__ {int Short; } ;
struct TYPE_4__ {int FD; int TxSeqNum; } ;


 scalar_t__ N2H_SYNC_PATTERN_MATCH (int*,int ) ;
 int NWP_IF_READ_CHECK (int ,int*,size_t) ;
 int NWP_IF_WRITE_CHECK (int ,int*,size_t) ;
 int SL_RET_CODE_OK ;
 size_t SL_SYNC_SCAN_THRESHOLD ;
 size_t SYNC_PATTERN_LEN ;
 int VERIFY_PROTOCOL (int) ;
 TYPE_3__ Work ;
 int _SL_DBG_CNT_INC (int ) ;
 int _SL_DBG_SYNC_LOG (size_t,int*) ;
 size_t _SL_RESP_SPEC_HDR_SIZE ;
 TYPE_2__ g_H2NCnysPattern ;
 TYPE_1__* g_pCB ;

_SlReturnVal_t _SlDrvRxHdrRead(_u8 *pBuf, _u8 *pAlignSize)
{
     _u32 SyncCnt = 0;
    _u8 ShiftIdx;



    NWP_IF_WRITE_CHECK(g_pCB->FD, (_u8 *)&g_H2NCnysPattern.Short, SYNC_PATTERN_LEN);



    NWP_IF_READ_CHECK(g_pCB->FD, &pBuf[0], 4);
    _SL_DBG_SYNC_LOG(SyncCnt,pBuf);


    while ( ! N2H_SYNC_PATTERN_MATCH(pBuf, g_pCB->TxSeqNum) )
    {

        VERIFY_PROTOCOL(SyncCnt < SL_SYNC_SCAN_THRESHOLD);


        if(0 == (SyncCnt % (_u32)SYNC_PATTERN_LEN))
        {
            NWP_IF_READ_CHECK(g_pCB->FD, &pBuf[4], 4);
            _SL_DBG_SYNC_LOG(SyncCnt,pBuf);
        }


        for(ShiftIdx = 0; ShiftIdx< 7; ShiftIdx++)
        {
            pBuf[ShiftIdx] = pBuf[ShiftIdx+1];
        }
        pBuf[7] = 0;

        SyncCnt++;
    }


    SyncCnt %= SYNC_PATTERN_LEN;

    if(SyncCnt > 0)
    {
        *(_u32 *)&pBuf[0] = *(_u32 *)&pBuf[4];
        NWP_IF_READ_CHECK(g_pCB->FD, &pBuf[SYNC_PATTERN_LEN - SyncCnt], (_u16)SyncCnt);
    }
    else
    {
        NWP_IF_READ_CHECK(g_pCB->FD, &pBuf[0], 4);
    }


    while ( N2H_SYNC_PATTERN_MATCH(pBuf, g_pCB->TxSeqNum) )
    {
        _SL_DBG_CNT_INC(Work.DoubleSyncPattern);
        NWP_IF_READ_CHECK(g_pCB->FD, &pBuf[0], SYNC_PATTERN_LEN);
    }
    g_pCB->TxSeqNum++;


    NWP_IF_READ_CHECK(g_pCB->FD, &pBuf[SYNC_PATTERN_LEN], _SL_RESP_SPEC_HDR_SIZE);



    *pAlignSize = (_u8)((SyncCnt > 0) ? (SYNC_PATTERN_LEN - SyncCnt) : 0);

    return SL_RET_CODE_OK;
}

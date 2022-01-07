
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int m_pHeaderIndex; scalar_t__ m_respHeaderLen; int m_pRespHeaderBuf; int m_pRespHeaderBufPos; scalar_t__ m_pIovec; scalar_t__ m_pIovecToWrite; scalar_t__ m_pIovecCur; int m_pRespBuf; int m_pRespBufPos; } ;
typedef TYPE_1__ LSAPI_Request ;


 int memset (int *,int ,int) ;

void LSAPI_Reset_r( LSAPI_Request * pReq )
{
    pReq->m_pRespBufPos = pReq->m_pRespBuf;
    pReq->m_pIovecCur = pReq->m_pIovecToWrite = pReq->m_pIovec + 1;
    pReq->m_pRespHeaderBufPos = pReq->m_pRespHeaderBuf;

    memset( &pReq->m_pHeaderIndex, 0,
            (char *)(pReq->m_respHeaderLen) - (char *)&pReq->m_pHeaderIndex );
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct lsapi_resp_header {int dummy; } ;
struct TYPE_8__ {int m_cntHeaders; } ;
struct TYPE_9__ {int m_pktHeader; TYPE_2__ m_respInfo; } ;
struct TYPE_11__ {int m_reqState; scalar_t__ m_pRespHeaderBufPos; scalar_t__ m_pRespHeaderBuf; int m_totalLen; TYPE_4__* m_pIovec; TYPE_4__* m_pIovecToWrite; TYPE_3__ m_respHeader; TYPE_1__* m_pIovecCur; } ;
struct TYPE_10__ {int iov_len; void* iov_base; } ;
struct TYPE_7__ {scalar_t__ iov_len; void* iov_base; } ;
typedef TYPE_5__ LSAPI_Request ;


 int LSAPI_RESP_HEADER ;
 int LSAPI_ST_RESP_HEADER ;
 int lsapi_buildPacketHeader (int *,int ,int) ;

int LSAPI_FinalizeRespHeaders_r( LSAPI_Request * pReq )
{
    if ( !pReq || !pReq->m_pIovec )
        return -1;
    if ( !( pReq->m_reqState & LSAPI_ST_RESP_HEADER ) )
        return 0;
    pReq->m_reqState &= ~LSAPI_ST_RESP_HEADER;
    if ( pReq->m_pRespHeaderBufPos > pReq->m_pRespHeaderBuf )
    {
        pReq->m_pIovecCur->iov_base = (void *)pReq->m_pRespHeaderBuf;
        pReq->m_pIovecCur->iov_len = pReq->m_pRespHeaderBufPos - pReq->m_pRespHeaderBuf;
        pReq->m_totalLen += pReq->m_pIovecCur->iov_len;
        ++pReq->m_pIovecCur;
    }

    pReq->m_pIovec->iov_len = sizeof( struct lsapi_resp_header)
            + pReq->m_respHeader.m_respInfo.m_cntHeaders * sizeof( short );
    pReq->m_totalLen += pReq->m_pIovec->iov_len;

    lsapi_buildPacketHeader( &pReq->m_respHeader.m_pktHeader,
                    LSAPI_RESP_HEADER, pReq->m_totalLen );
    pReq->m_pIovec->iov_base = (void *)&pReq->m_respHeader;
    pReq->m_pIovecToWrite = pReq->m_pIovec;
    return 0;
}

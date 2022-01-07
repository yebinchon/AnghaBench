
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct lsapi_packet_header {int dummy; } ;
struct TYPE_5__ {int m_pRespBufPos; int m_pRespBuf; TYPE_1__* m_pIovecCur; int m_totalLen; int m_reqState; struct lsapi_packet_header* m_respPktHeader; } ;
struct TYPE_4__ {int iov_len; void* iov_base; } ;
typedef TYPE_2__ LSAPI_Request ;


 int LSAPI_PACKET_HEADER_LEN ;
 int LSAPI_RESP_STREAM ;
 int LSAPI_ST_RESP_BODY ;
 int lsapi_buildPacketHeader (struct lsapi_packet_header*,int ,int) ;

void Flush_RespBuf_r( LSAPI_Request * pReq )
{
    struct lsapi_packet_header * pHeader = pReq->m_respPktHeader;
    int bufLen = pReq->m_pRespBufPos - pReq->m_pRespBuf;
    pReq->m_reqState |= LSAPI_ST_RESP_BODY;
    lsapi_buildPacketHeader( pHeader, LSAPI_RESP_STREAM,
                        bufLen + LSAPI_PACKET_HEADER_LEN );
    pReq->m_totalLen += bufLen + LSAPI_PACKET_HEADER_LEN;

    pReq->m_pIovecCur->iov_base = (void *)pHeader;
    pReq->m_pIovecCur->iov_len = LSAPI_PACKET_HEADER_LEN;
    ++pReq->m_pIovecCur;
    ++pHeader;
    if ( bufLen > 0 )
    {
        pReq->m_pIovecCur->iov_base = (void *)pReq->m_pRespBuf;
        pReq->m_pIovecCur->iov_len = bufLen;
        pReq->m_pRespBufPos = pReq->m_pRespBuf;
        ++pReq->m_pIovecCur;
        bufLen = 0;
    }
}

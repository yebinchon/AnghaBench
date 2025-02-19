
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int m_reqState; int m_fd; scalar_t__ m_pRespBufPos; scalar_t__ m_pRespBuf; TYPE_1__* m_pIovecCur; int m_totalLen; } ;
struct TYPE_8__ {scalar_t__ iov_len; void* iov_base; } ;
typedef TYPE_2__ LSAPI_Request ;


 int Flush_RespBuf_r (TYPE_2__*) ;
 int LSAPI_FinalizeRespHeaders_r (TYPE_2__*) ;
 int LSAPI_Flush_r (TYPE_2__*) ;
 scalar_t__ LSAPI_PACKET_HEADER_LEN ;
 int LSAPI_Reset_r (TYPE_2__*) ;
 int LSAPI_ST_RESP_HEADER ;
 scalar_t__ finish_close ;

int LSAPI_Finish_r( LSAPI_Request * pReq )
{

    if ( !pReq )
        return -1;
    if (pReq->m_reqState)
    {
        if ( pReq->m_fd != -1 )
        {
            if ( pReq->m_reqState & LSAPI_ST_RESP_HEADER )
            {
                LSAPI_FinalizeRespHeaders_r( pReq );
            }
            if ( pReq->m_pRespBufPos != pReq->m_pRespBuf )
            {
                Flush_RespBuf_r( pReq );
            }

            pReq->m_pIovecCur->iov_base = (void *)finish_close;
            pReq->m_pIovecCur->iov_len = LSAPI_PACKET_HEADER_LEN;
            pReq->m_totalLen += LSAPI_PACKET_HEADER_LEN;
            ++pReq->m_pIovecCur;
            LSAPI_Flush_r( pReq );
        }
        LSAPI_Reset_r( pReq );
    }
    return 0;
}

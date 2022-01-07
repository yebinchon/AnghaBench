
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
typedef scalar_t__ off_t ;
struct TYPE_9__ {scalar_t__ m_bufRead; scalar_t__ m_bufProcessed; scalar_t__ m_reqBodyLen; scalar_t__ m_reqBodyRead; scalar_t__ m_reqBufSize; scalar_t__ m_pReqBuf; int m_fd; TYPE_3__* m_pHeader; } ;
struct TYPE_6__ {scalar_t__ m_iLen; } ;
struct TYPE_7__ {TYPE_1__ m_packetLen; } ;
struct TYPE_8__ {TYPE_2__ m_pktHeader; } ;
typedef TYPE_4__ LSAPI_Request ;


 scalar_t__ lsapi_read (int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static int readBodyToReqBuf( LSAPI_Request * pReq )
{
    off_t bodyLeft;
    ssize_t len = pReq->m_bufRead - pReq->m_bufProcessed;
    if ( len > 0 )
        return len;
    pReq->m_bufRead = pReq->m_bufProcessed = pReq->m_pHeader->m_pktHeader.m_packetLen.m_iLen;

    bodyLeft = pReq->m_reqBodyLen - pReq->m_reqBodyRead;
    len = pReq->m_reqBufSize - pReq->m_bufRead;
    if ( len < 0 )
        return -1;
    if ( len > bodyLeft )
        len = bodyLeft;

    len = lsapi_read( pReq->m_fd, pReq->m_pReqBuf + pReq->m_bufRead, len );
    if ( len > 0 )
        pReq->m_bufRead += len;
    return len;
}

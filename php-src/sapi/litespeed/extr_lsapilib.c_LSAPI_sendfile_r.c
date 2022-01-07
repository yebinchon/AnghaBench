
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct lsapi_packet_header {int dummy; } ;
typedef int ssize_t ;
typedef int off_t ;
struct TYPE_5__ {int m_fd; int m_reqState; struct lsapi_packet_header* m_respPktHeader; } ;
typedef TYPE_1__ LSAPI_Request ;


 int LSAPI_FinalizeRespHeaders_r (TYPE_1__*) ;
 int LSAPI_Flush_r (TYPE_1__*) ;
 scalar_t__ LSAPI_PACKET_HEADER_LEN ;
 int LSAPI_RESP_STREAM ;
 int LSAPI_ST_RESP_BODY ;
 int LSAPI_ST_RESP_HEADER ;
 int gsendfile (int,int,int *,size_t) ;
 int lsapi_buildPacketHeader (struct lsapi_packet_header*,int ,scalar_t__) ;
 scalar_t__ write (int,char const*,scalar_t__) ;

ssize_t LSAPI_sendfile_r( LSAPI_Request * pReq, int fdIn, off_t* off, size_t size )
{
    struct lsapi_packet_header * pHeader = pReq->m_respPktHeader;
    if ( !pReq || (pReq->m_fd == -1) || fdIn == -1 )
        return -1;
    if ( pReq->m_reqState & LSAPI_ST_RESP_HEADER )
    {
        LSAPI_FinalizeRespHeaders_r( pReq );
    }
    pReq->m_reqState |= LSAPI_ST_RESP_BODY;

    LSAPI_Flush_r(pReq);

    lsapi_buildPacketHeader( pHeader, LSAPI_RESP_STREAM,
                            size + LSAPI_PACKET_HEADER_LEN );


    if (write(pReq->m_fd, (const char *) pHeader, LSAPI_PACKET_HEADER_LEN ) != LSAPI_PACKET_HEADER_LEN)
        return -1;

    return gsendfile( pReq->m_fd, fdIn, off, size );
}

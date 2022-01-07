
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct lsapi_packet_header {int dummy; } ;
struct iovec {int iov_len; void* iov_base; } ;
typedef int ssize_t ;
struct TYPE_5__ {int m_fd; int m_fdListen; scalar_t__ m_pRespBufPos; scalar_t__ m_pRespBuf; } ;
typedef TYPE_1__ LSAPI_Request ;


 int LSAPI_Flush_r (TYPE_1__*) ;
 int LSAPI_MAX_DATA_PACKET_LEN ;
 void* LSAPI_PACKET_HEADER_LEN ;
 int LSAPI_STDERR_STREAM ;
 int lsapi_buildPacketHeader (struct lsapi_packet_header*,int ,void*) ;
 int lsapi_close_connection (TYPE_1__*) ;
 int lsapi_writev (int,struct iovec**,int,int) ;
 scalar_t__ s_stderr_log_path ;
 int write (int,char const*,size_t) ;

ssize_t LSAPI_Write_Stderr_r( LSAPI_Request * pReq, const char * pBuf, size_t len )
{
    struct lsapi_packet_header header;
    const char * pEnd;
    const char * p;
    ssize_t packetLen;
    ssize_t totalLen;
    int ret;
    struct iovec iov[2];
    struct iovec *pIov;

    if ( !pReq )
        return -1;
    if (s_stderr_log_path || pReq->m_fd == -1 || pReq->m_fd == pReq->m_fdListen)
        return write( 2, pBuf, len );
    if ( pReq->m_pRespBufPos != pReq->m_pRespBuf )
    {
        LSAPI_Flush_r( pReq );
    }

    p = pBuf;
    pEnd = pBuf + len;

    while( ( packetLen = pEnd - p ) > 0 )
    {
        if ( LSAPI_MAX_DATA_PACKET_LEN < packetLen)
        {
            packetLen = LSAPI_MAX_DATA_PACKET_LEN;
        }

        lsapi_buildPacketHeader( &header, LSAPI_STDERR_STREAM,
                            packetLen + LSAPI_PACKET_HEADER_LEN );
        totalLen = packetLen + LSAPI_PACKET_HEADER_LEN;

        iov[0].iov_base = (void *)&header;
        iov[0].iov_len = LSAPI_PACKET_HEADER_LEN;

        iov[1].iov_base = (void *)p;
        iov[1].iov_len = packetLen;
        p += packetLen;
        pIov = iov;
        ret = lsapi_writev( pReq->m_fd, &pIov,
                  2, totalLen );
        if ( ret < totalLen )
        {
            lsapi_close_connection(pReq);
            ret = -1;
        }
    }
    return p - pBuf;
}

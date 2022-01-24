#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct lsapi_packet_header {int dummy; } ;
struct iovec {int iov_len; void* iov_base; } ;
typedef  int ssize_t ;
struct TYPE_5__ {int m_fd; int m_fdListen; scalar_t__ m_pRespBufPos; scalar_t__ m_pRespBuf; } ;
typedef  TYPE_1__ LSAPI_Request ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int LSAPI_MAX_DATA_PACKET_LEN ; 
 void* LSAPI_PACKET_HEADER_LEN ; 
 int /*<<< orphan*/  LSAPI_STDERR_STREAM ; 
 int /*<<< orphan*/  FUNC1 (struct lsapi_packet_header*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (int,struct iovec**,int,int) ; 
 scalar_t__ s_stderr_log_path ; 
 int FUNC4 (int,char const*,size_t) ; 

ssize_t FUNC5( LSAPI_Request * pReq, const char * pBuf, size_t len )
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
        return FUNC4( 2, pBuf, len );
    if ( pReq->m_pRespBufPos != pReq->m_pRespBuf )
    {
        FUNC0( pReq );
    }

    p       = pBuf;
    pEnd    = pBuf + len;

    while( ( packetLen = pEnd - p ) > 0 )
    {
        if ( LSAPI_MAX_DATA_PACKET_LEN < packetLen)
        {
            packetLen = LSAPI_MAX_DATA_PACKET_LEN;
        }

        FUNC1( &header, LSAPI_STDERR_STREAM,
                            packetLen + LSAPI_PACKET_HEADER_LEN );
        totalLen = packetLen + LSAPI_PACKET_HEADER_LEN;

        iov[0].iov_base = (void *)&header;
        iov[0].iov_len  = LSAPI_PACKET_HEADER_LEN;

        iov[1].iov_base = (void *)p;
        iov[1].iov_len  = packetLen;
        p += packetLen;
        pIov = iov;
        ret = FUNC3( pReq->m_fd, &pIov,
                  2, totalLen );
        if ( ret < totalLen )
        {
            FUNC2(pReq);
            ret = -1;
        }
    }
    return p - pBuf;
}
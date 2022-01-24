#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* m_pRespBuf; char* m_pRespBufPos; char* m_pRespBufEnd; int m_fdListen; int m_fd; int /*<<< orphan*/ * m_respPktHeader; int /*<<< orphan*/ * m_respPktHeaderEnd; scalar_t__ m_pIovec; scalar_t__ m_pIovecToWrite; scalar_t__ m_pIovecCur; } ;
typedef  TYPE_1__ LSAPI_Request ;

/* Variables and functions */
 int /*<<< orphan*/  LSAPI_INIT_RESP_HEADER_LEN ; 
 int LSAPI_RESP_BUF_SIZE ; 
 int /*<<< orphan*/  O_RDWR ; 
 int STDIN_FILENO ; 
 int FUNC0 (TYPE_1__*,int) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (char*,int /*<<< orphan*/ ) ; 

int FUNC9( LSAPI_Request * pReq, int fd )
{
    int newfd;
    if ( !pReq )
        return -1;
    FUNC7( pReq, 0, sizeof( LSAPI_Request ) );
    if ( FUNC0( pReq, 16 ) == -1 )
        return -1;
    pReq->m_pRespBuf = pReq->m_pRespBufPos = (char *)FUNC6( LSAPI_RESP_BUF_SIZE );
    if ( !pReq->m_pRespBuf )
        return -1;
    pReq->m_pRespBufEnd = pReq->m_pRespBuf + LSAPI_RESP_BUF_SIZE;
    pReq->m_pIovecCur = pReq->m_pIovecToWrite = pReq->m_pIovec + 1;
    pReq->m_respPktHeaderEnd = &pReq->m_respPktHeader[5];
    if ( FUNC1( pReq, LSAPI_INIT_RESP_HEADER_LEN ) == -1 )
        return -1;

    if ( fd == STDIN_FILENO )
    {
        fd = FUNC2( fd );
        newfd = FUNC8( "/dev/null", O_RDWR );
        FUNC3( newfd, STDIN_FILENO );
    }

    if ( FUNC4( fd ) )
    {
        pReq->m_fdListen = -1;
        pReq->m_fd = fd;
    }
    else
    {
        pReq->m_fdListen = fd;
        pReq->m_fd = -1;
        FUNC5( fd, 1 );
    }
    return 0;
}
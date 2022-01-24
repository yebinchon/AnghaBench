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
struct TYPE_6__ {int m_pIovecCur; int m_pIovecToWrite; scalar_t__ m_pRespBufPos; scalar_t__ m_pRespBuf; int m_fd; int m_totalLen; int m_pIovec; int m_reqState; } ;
typedef  TYPE_1__ LSAPI_Request ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int LSAPI_ST_RESP_HEADER ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (int,int*,int,int) ; 

int FUNC4( LSAPI_Request * pReq )
{
    int ret = 0;
    int n;
    if ( !pReq )
        return -1;
    n = pReq->m_pIovecCur - pReq->m_pIovecToWrite;
    if (( 0 == n )&&( pReq->m_pRespBufPos == pReq->m_pRespBuf ))
        return 0;
    if ( pReq->m_fd == -1 )
    {
        pReq->m_pRespBufPos = pReq->m_pRespBuf;
        pReq->m_totalLen = 0;
        pReq->m_pIovecCur = pReq->m_pIovecToWrite = pReq->m_pIovec;
        return -1;
    }
    if ( pReq->m_reqState & LSAPI_ST_RESP_HEADER )
    {
        FUNC1( pReq );
    }
    if ( pReq->m_pRespBufPos != pReq->m_pRespBuf )
    {
        FUNC0( pReq );
    }

    n = pReq->m_pIovecCur - pReq->m_pIovecToWrite;
    if ( n > 0 )
    {

        ret = FUNC3( pReq->m_fd, &pReq->m_pIovecToWrite,
                  n, pReq->m_totalLen );
        if ( ret < pReq->m_totalLen )
        {
            FUNC2(pReq);
            ret = -1;
        }
        pReq->m_totalLen = 0;
        pReq->m_pIovecCur = pReq->m_pIovecToWrite = pReq->m_pIovec;
    }
    return ret;
}
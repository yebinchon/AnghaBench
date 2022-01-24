#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int m_reqState; int m_fd; scalar_t__ m_pRespBufPos; scalar_t__ m_pRespBuf; TYPE_1__* m_pIovecCur; int /*<<< orphan*/  m_totalLen; } ;
struct TYPE_8__ {scalar_t__ iov_len; void* iov_base; } ;
typedef  TYPE_2__ LSAPI_Request ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ LSAPI_PACKET_HEADER_LEN ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int LSAPI_ST_RESP_HEADER ; 
 scalar_t__ finish_close ; 

int FUNC4( LSAPI_Request * pReq )
{
    /* finish req body */
    if ( !pReq )
        return -1;
    if (pReq->m_reqState)
    {
        if ( pReq->m_fd != -1 )
        {
            if ( pReq->m_reqState & LSAPI_ST_RESP_HEADER )
            {
                FUNC1( pReq );
            }
            if ( pReq->m_pRespBufPos != pReq->m_pRespBuf )
            {
                FUNC0( pReq );
            }

            pReq->m_pIovecCur->iov_base = (void *)finish_close;
            pReq->m_pIovecCur->iov_len  = LSAPI_PACKET_HEADER_LEN;
            pReq->m_totalLen += LSAPI_PACKET_HEADER_LEN;
            ++pReq->m_pIovecCur;
            FUNC2( pReq );
        }
        FUNC3( pReq );
    }
    return 0;
}
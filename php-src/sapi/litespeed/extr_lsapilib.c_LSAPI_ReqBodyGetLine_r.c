
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
struct TYPE_4__ {int m_fd; scalar_t__ m_bufRead; scalar_t__ m_bufProcessed; char* m_pReqBuf; scalar_t__ m_reqBodyRead; } ;
typedef TYPE_1__ LSAPI_Request ;


 char* memchr (char*,char,scalar_t__) ;
 int memmove (char*,char*,scalar_t__) ;
 scalar_t__ readBodyToReqBuf (TYPE_1__*) ;

int LSAPI_ReqBodyGetLine_r( LSAPI_Request * pReq, char * pBuf, size_t bufLen, int *getLF )
{
    ssize_t len;
    ssize_t left;
    char * pBufEnd = pBuf + bufLen - 1;
    char * pBufCur = pBuf;
    char * pCur;
    char * p;
    if (!pReq || pReq->m_fd == -1 || !pBuf || !getLF)
        return -1;
    *getLF = 0;
    while( (left = pBufEnd - pBufCur ) > 0 )
    {

        len = pReq->m_bufRead - pReq->m_bufProcessed;
        if ( len <= 0 )
        {
            if ( (len = readBodyToReqBuf( pReq )) <= 0 )
            {
                *getLF = 1;
                break;
            }
        }
        if ( len > left )
            len = left;
        pCur = pReq->m_pReqBuf + pReq->m_bufProcessed;
        p = memchr( pCur, '\n', len );
        if ( p )
            len = p - pCur + 1;
        memmove( pBufCur, pCur, len );
        pBufCur += len;
        pReq->m_bufProcessed += len;

        pReq->m_reqBodyRead += len;

        if ( p )
        {
            *getLF = 1;
            break;
        }
    }
    *pBufCur = 0;

    return pBufCur - pBuf;
}

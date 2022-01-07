
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* m_pRespHeaderBuf; char* m_pRespHeaderBufPos; char* m_pRespHeaderBufEnd; } ;
typedef TYPE_1__ LSAPI_Request ;


 scalar_t__ realloc (char*,int) ;

__attribute__((used)) static int allocateRespHeaderBuf( LSAPI_Request * pReq, int size )
{
    char * p = (char *)realloc( pReq->m_pRespHeaderBuf, size );
    if ( !p )
        return -1;
    pReq->m_pRespHeaderBufPos = p + ( pReq->m_pRespHeaderBufPos - pReq->m_pRespHeaderBuf );
    pReq->m_pRespHeaderBuf = p;
    pReq->m_pRespHeaderBufEnd = p + size;
    return 0;
}

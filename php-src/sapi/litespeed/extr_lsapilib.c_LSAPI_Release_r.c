
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ m_pRespHeaderBuf; scalar_t__ m_pEnvList; scalar_t__ m_pSpecialEnvList; scalar_t__ m_pReqBuf; } ;
typedef TYPE_1__ LSAPI_Request ;


 int free (scalar_t__) ;

int LSAPI_Release_r( LSAPI_Request * pReq )
{
    if ( pReq->m_pReqBuf )
        free( pReq->m_pReqBuf );
    if ( pReq->m_pSpecialEnvList )
        free( pReq->m_pSpecialEnvList );
    if ( pReq->m_pEnvList )
        free( pReq->m_pEnvList );
    if ( pReq->m_pRespHeaderBuf )
        free( pReq->m_pRespHeaderBuf );
    return 0;
}

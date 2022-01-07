
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {char* m_pHttpHeader; TYPE_1__* m_pHeaderIndex; } ;
struct TYPE_4__ {int* m_headerOff; int* m_headerLen; } ;
typedef TYPE_2__ LSAPI_Request ;


 unsigned int H_TRANSFER_ENCODING ;

char * LSAPI_GetHeader_r( LSAPI_Request * pReq, int headerIndex )
{
    int off;
    if ( !pReq || ((unsigned int)headerIndex > H_TRANSFER_ENCODING) )
        return ((void*)0);
    off = pReq->m_pHeaderIndex->m_headerOff[ headerIndex ];
    if ( !off )
        return ((void*)0);
    if ( *(pReq->m_pHttpHeader + off
        + pReq->m_pHeaderIndex->m_headerLen[ headerIndex ]) )
    {
        *( pReq->m_pHttpHeader + off
            + pReq->m_pHeaderIndex->m_headerLen[ headerIndex ]) = 0;
    }
    return pReq->m_pHttpHeader + off;
}

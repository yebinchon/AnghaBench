
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct lsapi_header_offset {scalar_t__ valueLen; scalar_t__ valueOff; scalar_t__ nameLen; scalar_t__ nameOff; } ;
struct TYPE_7__ {TYPE_2__* m_pHeader; struct lsapi_header_offset* m_pUnknownHeader; TYPE_1__* m_pHeaderIndex; } ;
struct TYPE_6__ {scalar_t__ m_cntUnknownHeaders; } ;
struct TYPE_5__ {scalar_t__* m_headerOff; int * m_headerLen; } ;
typedef TYPE_3__ LSAPI_Request ;


 int H_TRANSFER_ENCODING ;
 int swapIntEndian (scalar_t__*) ;

__attribute__((used)) static void fixHeaderIndexEndian( LSAPI_Request * pReq )
{
    int i;
    for( i = 0; i < H_TRANSFER_ENCODING; ++i )
    {
        if ( pReq->m_pHeaderIndex->m_headerOff[i] )
        {
            register char b;
            char * p = (char *)(&pReq->m_pHeaderIndex->m_headerLen[i]);
            b = p[0];
            p[0] = p[1];
            p[1] = b;
            swapIntEndian( &pReq->m_pHeaderIndex->m_headerOff[i] );
        }
    }
    if ( pReq->m_pHeader->m_cntUnknownHeaders > 0 )
    {
        struct lsapi_header_offset * pCur, *pEnd;
        pCur = pReq->m_pUnknownHeader;
        pEnd = pCur + pReq->m_pHeader->m_cntUnknownHeaders;
        while( pCur < pEnd )
        {
            swapIntEndian( &pCur->nameOff );
            swapIntEndian( &pCur->nameLen );
            swapIntEndian( &pCur->valueOff );
            swapIntEndian( &pCur->valueLen );
            ++pCur;
        }
    }
}

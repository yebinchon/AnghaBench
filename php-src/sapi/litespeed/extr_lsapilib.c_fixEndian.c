
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct lsapi_req_header {int m_cntSpecialEnv; int m_cntEnv; int m_cntUnknownHeaders; int m_requestMethodOff; int m_queryStringOff; int m_scriptNameOff; int m_scriptFileOff; int m_reqBodyLen; int m_httpHeaderLen; } ;
struct TYPE_3__ {struct lsapi_req_header* m_pHeader; } ;
typedef TYPE_1__ LSAPI_Request ;


 int swapIntEndian (int *) ;

__attribute__((used)) static inline void fixEndian( LSAPI_Request * pReq )
{
    struct lsapi_req_header *p= pReq->m_pHeader;
    swapIntEndian( &p->m_httpHeaderLen );
    swapIntEndian( &p->m_reqBodyLen );
    swapIntEndian( &p->m_scriptFileOff );
    swapIntEndian( &p->m_scriptNameOff );
    swapIntEndian( &p->m_queryStringOff );
    swapIntEndian( &p->m_requestMethodOff );
    swapIntEndian( &p->m_cntUnknownHeaders );
    swapIntEndian( &p->m_cntEnv );
    swapIntEndian( &p->m_cntSpecialEnv );
}

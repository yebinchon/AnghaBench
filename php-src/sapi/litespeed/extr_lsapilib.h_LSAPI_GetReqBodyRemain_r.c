
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int off_t ;
struct TYPE_3__ {int m_reqBodyLen; int m_reqBodyRead; } ;
typedef TYPE_1__ LSAPI_Request ;



__attribute__((used)) static inline off_t LSAPI_GetReqBodyRemain_r( LSAPI_Request * pReq )
{
    if ( pReq )
        return pReq->m_reqBodyLen - pReq->m_reqBodyRead;
    return -1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int m_status; } ;
struct TYPE_6__ {TYPE_1__ m_respInfo; } ;
struct TYPE_7__ {TYPE_2__ m_respHeader; } ;
typedef TYPE_3__ LSAPI_Request ;



__attribute__((used)) static inline int LSAPI_SetRespStatus_r( LSAPI_Request * pReq, int code )
{
    if ( !pReq )
        return -1;
    pReq->m_respHeader.m_respInfo.m_status = code;
    return 0;
}

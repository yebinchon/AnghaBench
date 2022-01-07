
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* m_pAppData; } ;
typedef TYPE_1__ LSAPI_Request ;



__attribute__((used)) static inline int LSAPI_SetAppData_r( LSAPI_Request * pReq, void * data )
{
    if ( !pReq )
        return -1;
    pReq->m_pAppData = data;
    return 0;
}

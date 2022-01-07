
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int m_fdListen; } ;
typedef TYPE_1__ LSAPI_Request ;



int LSAPI_Is_Listen_r( LSAPI_Request * pReq)
{
    return pReq->m_fdListen != -1;
}

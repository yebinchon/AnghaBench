
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* m_pHeader; int m_pSpecialEnvList; } ;
struct TYPE_4__ {scalar_t__ m_cntSpecialEnv; } ;
typedef TYPE_2__ LSAPI_Request ;
typedef int LSAPI_CB_EnvHandler ;


 int EnvForeach (int ,scalar_t__,int ,void*) ;

int LSAPI_ForeachSpecialEnv_r( LSAPI_Request * pReq,
            LSAPI_CB_EnvHandler fn, void * arg )
{
    if ( !pReq || !fn )
        return -1;
    if ( pReq->m_pHeader->m_cntSpecialEnv > 0 )
    {
        return EnvForeach( pReq->m_pSpecialEnvList,
                pReq->m_pHeader->m_cntSpecialEnv,
                    fn, arg );
    }
    return 0;

}

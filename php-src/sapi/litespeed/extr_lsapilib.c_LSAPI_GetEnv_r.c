
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct LSAPI_key_value_pair {char* pValue; int pKey; } ;
struct TYPE_6__ {TYPE_1__* m_pHeader; struct LSAPI_key_value_pair* m_pEnvList; } ;
struct TYPE_5__ {int m_cntEnv; } ;
typedef TYPE_2__ LSAPI_Request ;


 char* GetHeaderVar (TYPE_2__*,char const*) ;
 scalar_t__ strcmp (char const*,int ) ;
 scalar_t__ strncmp (char const*,char*,int) ;

char * LSAPI_GetEnv_r( LSAPI_Request * pReq, const char * name )
{
    struct LSAPI_key_value_pair * pBegin = pReq->m_pEnvList;
    struct LSAPI_key_value_pair * pEnd = pBegin + pReq->m_pHeader->m_cntEnv;
    if ( !pReq || !name )
        return ((void*)0);
    if ( strncmp( name, "HTTP_", 5 ) == 0 )
    {
        return GetHeaderVar( pReq, name );
    }
    while( pBegin < pEnd )
    {
        if ( strcmp( name, pBegin->pKey ) == 0 )
            return pBegin->pValue;
        ++pBegin;
    }
    return ((void*)0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct LSAPI_key_value_pair {char* pKey; int valLen; scalar_t__ pValue; } ;
struct TYPE_8__ {int m_fdListen; TYPE_1__* m_pHeader; struct LSAPI_key_value_pair* m_pSpecialEnvList; } ;
struct TYPE_7__ {int m_cntSpecialEnv; } ;
typedef TYPE_2__ LSAPI_Request ;


 char* LSAPI_GetEnv_r (TYPE_2__*,char*) ;
 int close (int) ;
 int lsapi_log (char*) ;
 int lsapi_reopen_stderr (char const*) ;
 scalar_t__ lsapi_suexec_auth (TYPE_2__*,scalar_t__,int ,scalar_t__,int ) ;
 int s_defaultGid ;
 int s_defaultUid ;
 int s_uid ;
 int setUID_LVE (TYPE_2__*,int,int,char const*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int lsapi_changeUGid( LSAPI_Request * pReq )
{
    int uid = s_defaultUid;
    int gid = s_defaultGid;
    const char *pStderrLog;
    const char *pChroot = ((void*)0);
    struct LSAPI_key_value_pair * pEnv;
    struct LSAPI_key_value_pair * pAuth;
    int i;
    if ( s_uid )
        return 0;





    i = pReq->m_pHeader->m_cntSpecialEnv - 1;
    if ( i >= 0 )
    {
        pEnv = pReq->m_pSpecialEnvList + i;
        if (( *pEnv->pKey == '\000' )&&
            ( strcmp( pEnv->pKey+1, "SUEXEC_AUTH" ) == 0 ))
        {
            --pReq->m_pHeader->m_cntSpecialEnv;
            pAuth = pEnv--;
            if (( *pEnv->pKey == '\000' )&&
                ( strcmp( pEnv->pKey+1, "SUEXEC_UGID" ) == 0 ))
            {
                --pReq->m_pHeader->m_cntSpecialEnv;
                uid = *(uint32_t *)pEnv->pValue;
                gid = *(((uint32_t *)pEnv->pValue) + 1 );

            }
            else
            {
                lsapi_log("LSAPI: missing SUEXEC_UGID env, use default user!\n" );
                pEnv = ((void*)0);
            }
            if ( pEnv&& lsapi_suexec_auth( pReq, pAuth->pValue, pAuth->valLen, pEnv->pValue, pEnv->valLen ) == 0 )
            {


            }
            else
            {

                lsapi_log("LSAPI: SUEXEC_AUTH authentication failed, use default user!\n" );
                uid = 0;
            }
        }
        else
        {

        }
    }


    if ( !uid )
    {
        uid = s_defaultUid;
        gid = s_defaultGid;
    }


    if ( setUID_LVE( pReq, uid, gid, pChroot ) == -1 )
    {
        return -1;
    }

    s_uid = uid;

    if ( pReq->m_fdListen != -1 )
    {
        close( pReq->m_fdListen );
        pReq->m_fdListen = -1;
    }

    pStderrLog = LSAPI_GetEnv_r( pReq, "LSAPI_STDERR_LOG");
    if (pStderrLog)
        lsapi_reopen_stderr(pStderrLog);

    return 0;

}

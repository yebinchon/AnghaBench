#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct LSAPI_key_value_pair {char* pKey; int /*<<< orphan*/  valLen; scalar_t__ pValue; } ;
struct TYPE_8__ {int m_fdListen; TYPE_1__* m_pHeader; struct LSAPI_key_value_pair* m_pSpecialEnvList; } ;
struct TYPE_7__ {int m_cntSpecialEnv; } ;
typedef  TYPE_2__ LSAPI_Request ;

/* Variables and functions */
 char* FUNC0 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int s_defaultGid ; 
 int s_defaultUid ; 
 int s_uid ; 
 int FUNC5 (TYPE_2__*,int,int,char const*) ; 
 scalar_t__ FUNC6 (char*,char*) ; 

__attribute__((used)) static int FUNC7( LSAPI_Request * pReq )
{
    int uid = s_defaultUid;
    int gid = s_defaultGid;
    const char *pStderrLog;
    const char *pChroot = NULL;
    struct LSAPI_key_value_pair * pEnv;
    struct LSAPI_key_value_pair * pAuth;
    int i;
    if ( s_uid )
        return 0;
    //with special ID  0x00
    //authenticate the suEXEC request;
    //first one should be MD5( nonce + lscgid secret )
    //remember to clear the secret after verification
    //it should be set at the end of special env
    i = pReq->m_pHeader->m_cntSpecialEnv - 1;
    if ( i >= 0 )
    {
        pEnv = pReq->m_pSpecialEnvList + i;
        if (( *pEnv->pKey == '\000' )&&
            ( FUNC6( pEnv->pKey+1, "SUEXEC_AUTH" ) == 0 ))
        {
            --pReq->m_pHeader->m_cntSpecialEnv;
            pAuth = pEnv--;
            if (( *pEnv->pKey == '\000' )&&
                ( FUNC6( pEnv->pKey+1, "SUEXEC_UGID" ) == 0 ))
            {
                --pReq->m_pHeader->m_cntSpecialEnv;
                uid = *(uint32_t *)pEnv->pValue;
                gid = *(((uint32_t *)pEnv->pValue) + 1 );
                //lsapi_log("LSAPI: SUEXEC_UGID set UID: %d, GID: %d\n", uid, gid );
            }
            else
            {
                FUNC2("LSAPI: missing SUEXEC_UGID env, use default user!\n" );
                pEnv = NULL;
            }
            if ( pEnv&& FUNC4( pReq, pAuth->pValue, pAuth->valLen, pEnv->pValue, pEnv->valLen ) == 0 )
            {
                //read UID, GID from specialEnv

            }
            else
            {
                //authentication error
                FUNC2("LSAPI: SUEXEC_AUTH authentication failed, use default user!\n" );
                uid = 0;
            }
        }
        else
        {
            //lsapi_log("LSAPI: no SUEXEC_AUTH env, use default user!\n" );
        }
    }


    if ( !uid )
    {
        uid = s_defaultUid;
        gid = s_defaultGid;
    }

    //change uid
    if ( FUNC5( pReq, uid, gid, pChroot ) == -1 )
    {
        return -1;
    }

    s_uid = uid;

    if ( pReq->m_fdListen != -1 )
    {
        FUNC1( pReq->m_fdListen );
        pReq->m_fdListen = -1;
    }

    pStderrLog = FUNC0( pReq, "LSAPI_STDERR_LOG");
    if (pStderrLog)
        FUNC3(pStderrLog);

    return 0;

}
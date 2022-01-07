
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct passwd {scalar_t__ pw_gid; int pw_name; } ;
typedef scalar_t__ gid_t ;
typedef int LSAPI_Request ;


 scalar_t__ LSAPI_CAGEFS_NO_SUEXEC ;
 int LSAPI_perror_r (int *,char*,int *) ;
 int chroot (char const*) ;
 scalar_t__ fp_lve_jail ;
 struct passwd* getpwuid (int ) ;
 int initgroups (int ,scalar_t__) ;
 int lsapi_enable_core_dump () ;
 int lsapi_enterLVE (int *,int ) ;
 int lsapi_jailLVE (int *,int ,struct passwd*) ;
 scalar_t__ s_defaultGid ;
 int s_defaultUid ;
 scalar_t__ s_enable_core_dump ;
 scalar_t__ s_enable_lve ;
 scalar_t__ s_lve ;
 int setgid (scalar_t__) ;
 int setgroups (int,scalar_t__*) ;
 int setuid (int ) ;

__attribute__((used)) static int setUID_LVE(LSAPI_Request * pReq, uid_t uid, gid_t gid, const char * pChroot)
{
    int rv;
    struct passwd * pw;
    pw = getpwuid( uid );

    if ( s_lve )
    {
        if( lsapi_enterLVE( pReq, uid ) == -1 )
            return -1;
        if ( pw && fp_lve_jail)
        {
            rv = lsapi_jailLVE( pReq, uid, pw );
            if ( rv == -1 )
                return -1;
            if (( rv == 1 )&&(s_enable_lve == LSAPI_CAGEFS_NO_SUEXEC ))
            {
                uid = s_defaultUid;
                gid = s_defaultGid;
                pw = getpwuid( uid );
            }
        }
    }
    rv = setgid(gid);
    if (rv == -1)
    {
        LSAPI_perror_r(pReq, "LSAPI: setgid()", ((void*)0));
        return -1;
    }
    if ( pw && (pw->pw_gid == gid ))
    {
        rv = initgroups( pw->pw_name, gid );
        if (rv == -1)
        {
            LSAPI_perror_r(pReq, "LSAPI: initgroups()", ((void*)0));
            return -1;
        }
    }
    else
    {
        rv = setgroups(1, &gid);
        if (rv == -1)
        {
            LSAPI_perror_r(pReq, "LSAPI: setgroups()", ((void*)0));
        }
    }
    if ( pChroot )
    {
        rv = chroot( pChroot );
        if ( rv == -1 )
        {
            LSAPI_perror_r(pReq, "LSAPI: chroot()", ((void*)0));
            return -1;
        }
    }
    rv = setuid(uid);
    if (rv == -1)
    {
        LSAPI_perror_r(pReq, "LSAPI: setuid()", ((void*)0));
        return -1;
    }

    if ( s_enable_core_dump )
        lsapi_enable_core_dump();

    return 0;
}

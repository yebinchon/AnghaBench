#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uid_t ;
struct passwd {scalar_t__ pw_gid; int /*<<< orphan*/  pw_name; } ;
typedef  scalar_t__ gid_t ;
typedef  int /*<<< orphan*/  LSAPI_Request ;

/* Variables and functions */
 scalar_t__ LSAPI_CAGEFS_NO_SUEXEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int FUNC1 (char const*) ; 
 scalar_t__ fp_lve_jail ; 
 struct passwd* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct passwd*) ; 
 scalar_t__ s_defaultGid ; 
 int /*<<< orphan*/  s_defaultUid ; 
 scalar_t__ s_enable_core_dump ; 
 scalar_t__ s_enable_lve ; 
 scalar_t__ s_lve ; 
 int FUNC7 (scalar_t__) ; 
 int FUNC8 (int,scalar_t__*) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(LSAPI_Request * pReq, uid_t uid, gid_t gid, const char * pChroot)
{
    int rv;
    struct passwd * pw;
    pw = FUNC2( uid );
#if defined(linux) || defined(__linux) || defined(__linux__) || defined(__gnu_linux__)
    if ( s_lve )
    {
        if( FUNC5( pReq, uid ) == -1 )
            return -1;
        if ( pw && fp_lve_jail)
        {
            rv = FUNC6( pReq, uid, pw );
            if ( rv == -1 )
                return -1;
            if (( rv == 1 )&&(s_enable_lve == LSAPI_CAGEFS_NO_SUEXEC ))    //this mode only use cageFS, does not use suEXEC
            {
                uid = s_defaultUid;
                gid = s_defaultGid;
                pw = FUNC2( uid );
            }
        }
    }
#endif
    //if ( !uid || !gid )  //do not allow root
    //{
    //    return -1;
    //}

#if defined(__FreeBSD__ ) || defined(__NetBSD__) || defined(__OpenBSD__) \
    || defined(macintosh) || defined(__APPLE__) || defined(__APPLE_CC__)
    if ( s_enable_core_dump )
        lsapi_enable_core_dump();
#endif

    rv = FUNC7(gid);
    if (rv == -1)
    {
        FUNC0(pReq, "LSAPI: setgid()", NULL);
        return -1;
    }
    if ( pw && (pw->pw_gid == gid ))
    {
        rv = FUNC3( pw->pw_name, gid );
        if (rv == -1)
        {
            FUNC0(pReq, "LSAPI: initgroups()", NULL);
            return -1;
        }
    }
    else
    {
        rv = FUNC8(1, &gid);
        if (rv == -1)
        {
            FUNC0(pReq, "LSAPI: setgroups()", NULL);
        }
    }
    if ( pChroot )
    {
        rv = FUNC1( pChroot );
        if ( rv == -1 )
        {
            FUNC0(pReq, "LSAPI: chroot()", NULL);
            return -1;
        }
    }
    rv = FUNC9(uid);
    if (rv == -1)
    {
        FUNC0(pReq, "LSAPI: setuid()", NULL);
        return -1;
    }
#if defined(linux) || defined(__linux) || defined(__linux__) || defined(__gnu_linux__)
    if ( s_enable_core_dump )
        FUNC4();
#endif
    return 0;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct rlimit {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  fn_select_t ;
struct TYPE_2__ {int /*<<< orphan*/  m_fdListen; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  RLIMIT_CORE ; 
 int /*<<< orphan*/  STDERR_FILENO ; 
 void* FUNC11 (char const*) ; 
 TYPE_1__ g_req ; 
 char* FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (char const*) ; 
 void* s_accept_notify ; 
 void* s_dump_debug_info ; 
 int s_enable_core_dump ; 
 int s_keepListener ; 
 int s_max_busy_workers ; 
 int s_min_avail_pages ; 
 int /*<<< orphan*/  s_stderr_is_pipe ; 
 int /*<<< orphan*/  s_stderr_log_path ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,struct rlimit*) ; 
 int FUNC18 (char const*) ; 
 int /*<<< orphan*/  FUNC19 () ; 

int FUNC20( fn_select_t fp )
{
    const char *p;
    char ch;
    int n;
    int avoidFork = 0;

    p = FUNC12("LSAPI_STDERR_LOG");
    if (p)
    {
        FUNC16(p);
    }
    if (!s_stderr_log_path)
        s_stderr_is_pipe = FUNC13(STDERR_FILENO);

    p = FUNC12( "PHP_LSAPI_MAX_REQUESTS" );
    if ( !p )
        p = FUNC12( "LSAPI_MAX_REQS" );
    if ( p )
    {
        n = FUNC11( p );
        if ( n > 0 )
            FUNC7( n );
    }

    p = FUNC12( "LSAPI_KEEP_LISTEN" );
    if ( p )
    {
        n = FUNC11( p );
        s_keepListener = n;
    }

    p = FUNC12( "LSAPI_AVOID_FORK" );
    if ( p )
    {
        avoidFork = FUNC11( p );
        if (avoidFork)
        {
            s_keepListener = 2;
            ch = *(p + FUNC18(p) - 1);
            if (  ch == 'G' || ch == 'g' )
                avoidFork *= 1024 * 1024 * 1024;
            else if (  ch == 'M' || ch == 'm' )
                avoidFork *= 1024 * 1024;
            if (avoidFork >= 1024 * 10240)
                s_min_avail_pages = avoidFork / 4096;
        }
    }

    p = FUNC12( "LSAPI_ACCEPT_NOTIFY" );
    if ( p )
    {
        s_accept_notify = FUNC11( p );
    }

    p = FUNC12( "LSAPI_SLOW_REQ_MSECS" );
    if ( p )
    {
        n = FUNC11( p );
        FUNC10( n );
    }

#if defined( RLIMIT_CORE )
    p = getenv( "LSAPI_ALLOW_CORE_DUMP" );
    if ( !p )
    {
        struct rlimit limit = { 0, 0 };
        setrlimit( RLIMIT_CORE, &limit );
    }
    else
        s_enable_core_dump = 1;

#endif

    p = FUNC12( "LSAPI_MAX_IDLE" );
    if ( p )
    {
        n = FUNC11( p );
        FUNC4( n );
    }

    if ( FUNC1() )
    {
        n = 0;
        p = FUNC12( "PHP_LSAPI_CHILDREN" );
        if ( !p )
            p = FUNC12( "LSAPI_CHILDREN" );
        if ( p )
            n = FUNC11( p );
        if ( n > 1 )
        {
            FUNC0( n, fp, avoidFork != 0 );
            FUNC9( g_req.m_fdListen );
        }

        p = FUNC12( "LSAPI_EXTRA_CHILDREN" );
        if ( p )
            FUNC3( FUNC11( p ) );

        p = FUNC12( "LSAPI_MAX_IDLE_CHILDREN" );
        if ( p )
            FUNC5( FUNC11( p ) );

        p = FUNC12( "LSAPI_PGRP_MAX_IDLE" );
        if ( p )
        {
            FUNC8( FUNC11( p ) );
        }

        p = FUNC12( "LSAPI_MAX_PROCESS_TIME" );
        if ( p )
            FUNC6( FUNC11( p ) );

        if ( FUNC12( "LSAPI_PPID_NO_CHECK" ) )
        {
            FUNC2();
        }

        p = FUNC12("LSAPI_MAX_BUSY_WORKER");
        if (p)
        {
            n = FUNC11(p);
            s_max_busy_workers = n;
            if (n >= 0)
                FUNC2();
        }


        p = FUNC12( "LSAPI_DUMP_DEBUG_INFO" );
        if ( p )
            s_dump_debug_info = FUNC11( p );

        if ( FUNC15() == -1 )
            return -1;
#if defined(linux) || defined(__linux) || defined(__linux__) || defined(__gnu_linux__)
        FUNC14();
#endif
    }
    FUNC19();
    return 0;
}
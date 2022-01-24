#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct timeval {long tv_sec; int tv_usec; } ;
struct TYPE_7__ {int /*<<< orphan*/ * path_translated; } ;
struct TYPE_6__ {int phpinfo_as_text; char* executable_location; int php_ini_ignore; char* php_ini_path_override; int /*<<< orphan*/  ini_defaults; } ;

/* Variables and functions */
 scalar_t__ FAILURE ; 
 int FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 char* FUNC2 () ; 
 char* FUNC3 () ; 
 char* FUNC4 () ; 
 char* FUNC5 () ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 TYPE_5__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (int,char**) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 void* compiler_globals ; 
 int /*<<< orphan*/  compiler_globals_id ; 
 void* core_globals ; 
 int /*<<< orphan*/  core_globals_id ; 
 int /*<<< orphan*/  FUNC17 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 void* executor_globals ; 
 int /*<<< orphan*/  executor_globals_id ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 
 int /*<<< orphan*/  g_req ; 
 int /*<<< orphan*/  FUNC21 (struct timeval*,int /*<<< orphan*/ *) ; 
 scalar_t__ ignore_php_ini ; 
 int /*<<< orphan*/  FUNC22 (TYPE_1__*) ; 
 int /*<<< orphan*/  litespeed_module_entry ; 
 int /*<<< orphan*/  FUNC23 (long*) ; 
 int /*<<< orphan*/  lsapi_atexit ; 
 int lsapi_mode ; 
 TYPE_1__ lsapi_sapi_module ; 
 int FUNC24 (int,char**,int*,char**,char**) ; 
 int /*<<< orphan*/  FUNC25 () ; 
 scalar_t__ FUNC26 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC27 () ; 
 int FUNC28 () ; 
 int /*<<< orphan*/  request_info ; 
 void* sapi_globals ; 
 int /*<<< orphan*/  sapi_globals_id ; 
 int /*<<< orphan*/  sapi_lsapi_ini_defaults ; 
 int /*<<< orphan*/  FUNC29 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC30 (int,char**) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC32 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (char*,int,char*,int /*<<< orphan*/ ) ; 
 void* FUNC34 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC35 () ; 
 int /*<<< orphan*/  FUNC36 () ; 

int FUNC37( int argc, char * argv[] )
{
    int ret;
    int bindFd;

    char * php_ini_path = NULL;
    char * php_bind     = NULL;
    int n;
    int climode = 0;
    struct timeval tv_req_begin;
    struct timeval tv_req_end;
    int slow_script_msec = 0;
    char time_buf[40];


#if defined(SIGPIPE) && defined(SIG_IGN)
    signal(SIGPIPE, SIG_IGN);
#endif

#ifdef ZTS
    php_tsrm_startup();
#endif

#if PHP_MAJOR_VERSION >= 7
#if defined(ZEND_SIGNALS) || PHP_MINOR_VERSION > 0
    zend_signal_startup();
#endif
#endif

    if (argc > 1 ) {
        if ( FUNC24( argc, argv, &climode,
                &php_ini_path, &php_bind ) == -1 ) {
            return 1;
        }
    }
    if ( climode ) {
        lsapi_sapi_module.phpinfo_as_text = 1;
    } else {
        FUNC30(argc, argv );
    }

    FUNC29(&lsapi_sapi_module);

#ifdef ZTS
    compiler_globals = ts_resource(compiler_globals_id);
    executor_globals = ts_resource(executor_globals_id);
    core_globals = ts_resource(core_globals_id);
    sapi_globals = ts_resource(sapi_globals_id);

    SG(request_info).path_translated = NULL;
#endif

    lsapi_sapi_module.executable_location = argv[0];

    /* Initialize from environment variables before processing command-line
     * options: the latter override the former.
     */
    FUNC22(&lsapi_sapi_module);

    if ( ignore_php_ini )
        lsapi_sapi_module.php_ini_ignore = 1;

    if ( php_ini_path ) {
        lsapi_sapi_module.php_ini_path_override = php_ini_path;
    }


    lsapi_sapi_module.ini_defaults = sapi_lsapi_ini_defaults;

    if (FUNC26(&lsapi_sapi_module, &litespeed_module_entry, 1) == FAILURE) {
#ifdef ZTS
        tsrm_shutdown();
#endif
        return FAILURE;
    }

    if ( climode ) {
        return FUNC15(argc, argv);
    }

    if ( php_bind ) {
        bindFd = FUNC0( php_bind, 10 );
        if ( bindFd == -1 ) {
            FUNC19( stderr,
                     "Failed to bind socket [%s]: %s\n", php_bind, FUNC32( errno ) );
            FUNC18( 2 );
        }
        if ( bindFd != 0 ) {
            FUNC17( bindFd, 0 );
            FUNC16( bindFd );
        }
    }

    FUNC7();

#if defined(linux) || defined(__linux) || defined(__linux__) || defined(__gnu_linux__)
    int is_criu = FUNC11(); // Must be called before the regular init as it unsets the parameters.
#endif

    FUNC8( NULL );
    lsapi_mode = 1;

    slow_script_msec = FUNC6();

    if ( php_bind ) {
        FUNC9();
        FUNC20( php_bind );
        php_bind = NULL;
    }

    int result;

    FUNC14(lsapi_atexit);

    while( ( result = FUNC10( &g_req )) >= 0 ) {
#if defined(linux) || defined(__linux) || defined(__linux__) || defined(__gnu_linux__)
        if (is_criu && !result) {
            FUNC12();
        }
#endif
        if ( slow_script_msec ) {
            FUNC21( &tv_req_begin, NULL );
        }
        ret = FUNC28();
        if ( slow_script_msec ) {
            FUNC21( &tv_req_end, NULL );
            n = ((long) tv_req_end.tv_sec - tv_req_begin.tv_sec ) * 1000
                + (tv_req_end.tv_usec - tv_req_begin.tv_usec) / 1000;
            if ( n > slow_script_msec )
            {
                FUNC33( time_buf, 30, "%d/%b/%Y:%H:%M:%S", FUNC23( &tv_req_end.tv_sec ) );
                FUNC19( stderr, "[%s] Slow PHP script: %d ms\n  URL: %s %s\n  Query String: %s\n  Script: %s\n",
                         time_buf, n,  FUNC3(),
                         FUNC5(), FUNC2(),
                         FUNC4() );

            }
        }
        FUNC1();
        if ( ret ) {
            break;
        }
    }

    FUNC25();

#ifdef ZTS
    tsrm_shutdown();
#endif
    return ret;
}
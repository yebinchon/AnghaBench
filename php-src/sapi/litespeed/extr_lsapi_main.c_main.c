
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct timeval {long tv_sec; int tv_usec; } ;
struct TYPE_7__ {int * path_translated; } ;
struct TYPE_6__ {int phpinfo_as_text; char* executable_location; int php_ini_ignore; char* php_ini_path_override; int ini_defaults; } ;


 scalar_t__ FAILURE ;
 int LSAPI_CreateListenSock (char*,int) ;
 int LSAPI_Finish () ;
 char* LSAPI_GetQueryString () ;
 char* LSAPI_GetRequestMethod () ;
 char* LSAPI_GetScriptFileName () ;
 char* LSAPI_GetScriptName () ;
 int LSAPI_Get_Slow_Req_Msecs () ;
 int LSAPI_Init () ;
 int LSAPI_Init_Env_Parameters (int *) ;
 int LSAPI_No_Check_ppid () ;
 int LSAPI_Prefork_Accept_r (int *) ;
 int LSCRIU_Init () ;
 int LSCRIU_inc_req_procssed () ;
 TYPE_5__ SG (int ) ;
 int SIGPIPE ;
 int SIG_IGN ;
 int atexit (int ) ;
 int cli_main (int,char**) ;
 int close (int) ;
 void* compiler_globals ;
 int compiler_globals_id ;
 void* core_globals ;
 int core_globals_id ;
 int dup2 (int,int ) ;
 int errno ;
 void* executor_globals ;
 int executor_globals_id ;
 int exit (int) ;
 int fprintf (int ,char*,char*,...) ;
 int free (char*) ;
 int g_req ;
 int gettimeofday (struct timeval*,int *) ;
 scalar_t__ ignore_php_ini ;
 int init_sapi_from_env (TYPE_1__*) ;
 int litespeed_module_entry ;
 int localtime (long*) ;
 int lsapi_atexit ;
 int lsapi_mode ;
 TYPE_1__ lsapi_sapi_module ;
 int parse_opt (int,char**,int*,char**,char**) ;
 int php_module_shutdown () ;
 scalar_t__ php_module_startup (TYPE_1__*,int *,int) ;
 int php_tsrm_startup () ;
 int processReq () ;
 int request_info ;
 void* sapi_globals ;
 int sapi_globals_id ;
 int sapi_lsapi_ini_defaults ;
 int sapi_startup (TYPE_1__*) ;
 int setArgv0 (int,char**) ;
 int signal (int ,int ) ;
 int stderr ;
 char* strerror (int ) ;
 int strftime (char*,int,char*,int ) ;
 void* ts_resource (int ) ;
 int tsrm_shutdown () ;
 int zend_signal_startup () ;

int main( int argc, char * argv[] )
{
    int ret;
    int bindFd;

    char * php_ini_path = ((void*)0);
    char * php_bind = ((void*)0);
    int n;
    int climode = 0;
    struct timeval tv_req_begin;
    struct timeval tv_req_end;
    int slow_script_msec = 0;
    char time_buf[40];
    if (argc > 1 ) {
        if ( parse_opt( argc, argv, &climode,
                &php_ini_path, &php_bind ) == -1 ) {
            return 1;
        }
    }
    if ( climode ) {
        lsapi_sapi_module.phpinfo_as_text = 1;
    } else {
        setArgv0(argc, argv );
    }

    sapi_startup(&lsapi_sapi_module);
    lsapi_sapi_module.executable_location = argv[0];




    init_sapi_from_env(&lsapi_sapi_module);

    if ( ignore_php_ini )
        lsapi_sapi_module.php_ini_ignore = 1;

    if ( php_ini_path ) {
        lsapi_sapi_module.php_ini_path_override = php_ini_path;
    }


    lsapi_sapi_module.ini_defaults = sapi_lsapi_ini_defaults;

    if (php_module_startup(&lsapi_sapi_module, &litespeed_module_entry, 1) == FAILURE) {



        return FAILURE;
    }

    if ( climode ) {
        return cli_main(argc, argv);
    }

    if ( php_bind ) {
        bindFd = LSAPI_CreateListenSock( php_bind, 10 );
        if ( bindFd == -1 ) {
            fprintf( stderr,
                     "Failed to bind socket [%s]: %s\n", php_bind, strerror( errno ) );
            exit( 2 );
        }
        if ( bindFd != 0 ) {
            dup2( bindFd, 0 );
            close( bindFd );
        }
    }

    LSAPI_Init();


    int is_criu = LSCRIU_Init();


    LSAPI_Init_Env_Parameters( ((void*)0) );
    lsapi_mode = 1;

    slow_script_msec = LSAPI_Get_Slow_Req_Msecs();

    if ( php_bind ) {
        LSAPI_No_Check_ppid();
        free( php_bind );
        php_bind = ((void*)0);
    }

    int result;

    atexit(lsapi_atexit);

    while( ( result = LSAPI_Prefork_Accept_r( &g_req )) >= 0 ) {

        if (is_criu && !result) {
            LSCRIU_inc_req_procssed();
        }

        if ( slow_script_msec ) {
            gettimeofday( &tv_req_begin, ((void*)0) );
        }
        ret = processReq();
        if ( slow_script_msec ) {
            gettimeofday( &tv_req_end, ((void*)0) );
            n = ((long) tv_req_end.tv_sec - tv_req_begin.tv_sec ) * 1000
                + (tv_req_end.tv_usec - tv_req_begin.tv_usec) / 1000;
            if ( n > slow_script_msec )
            {
                strftime( time_buf, 30, "%d/%b/%Y:%H:%M:%S", localtime( &tv_req_end.tv_sec ) );
                fprintf( stderr, "[%s] Slow PHP script: %d ms\n  URL: %s %s\n  Query String: %s\n  Script: %s\n",
                         time_buf, n, LSAPI_GetRequestMethod(),
                         LSAPI_GetScriptName(), LSAPI_GetQueryString(),
                         LSAPI_GetScriptFileName() );

            }
        }
        LSAPI_Finish();
        if ( ret ) {
            break;
        }
    }

    php_module_shutdown();




    return ret;
}

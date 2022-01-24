#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct hostent {int /*<<< orphan*/  h_length; int /*<<< orphan*/  h_addr; } ;
typedef  int /*<<< orphan*/  host ;
struct TYPE_5__ {int /*<<< orphan*/  S_addr; } ;
struct TYPE_6__ {TYPE_1__ S_un; int /*<<< orphan*/  s_addr; } ;
struct TYPE_7__ {void* sin_port; TYPE_2__ sin_addr; int /*<<< orphan*/  sin_family; } ;
typedef  int /*<<< orphan*/  SOCKADDR_IN ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int FILENAME_MAX ; 
 unsigned short SYSLOG_PORT ; 
 char** __argv ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 struct hostent* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 void* FUNC5 (unsigned short) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 TYPE_3__ sa_logger ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 char* FUNC9 (char*,char) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 int FUNC11 (char*) ; 
 char* FUNC12 (char*,char) ; 
 scalar_t__ FUNC13 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* syslog_conf_dir ; 

__attribute__((used)) static void FUNC14()
{
    char pathname[ FILENAME_MAX ];
    char *p;
    FILE *fd;
    char host[256];
    struct hostent * phe;

    FUNC7( &sa_logger, 0, sizeof(SOCKADDR_IN) );
    sa_logger.sin_family = AF_INET;

    if( '\\' == syslog_conf_dir[0] || '/' == syslog_conf_dir[0] || ':' == syslog_conf_dir[1] )
    {
        /* absolute path */
        FUNC10( pathname, syslog_conf_dir );
    }
    else
    {
        /* relative path */
        char *q;

        FUNC10( pathname, __argv[0] );
        p = FUNC12( pathname, '\\' ) + 1;
        q = FUNC12( pathname, '/' ) + 1;
        if( p < q )
            *q = 0;
        else if( p > q )
            *p = 0;
        else
            pathname[0] = 0;
        FUNC8( pathname, syslog_conf_dir );
    }
    p = &pathname[ FUNC11( pathname ) - 1 ];
    if( '\\' != *p && '/' != *p )
    {
        p++; *p = '/';
    }
    FUNC10( ++p, "syslog.host" );

    /* read destination host name */
    fd = FUNC2( pathname, "r" );
    if( !fd )
        goto use_default;

    if( NULL == FUNC1( host, sizeof(host), fd ) )
        host[0] = 0;
    else
    {
        p = FUNC9( host, '\n' );
        if( p )
            *p = 0;
        p = FUNC9( host, '\r' );
        if( p )
            *p = 0;
    }
    FUNC0( fd );

    p = FUNC9( host, ':' );
    if( p )
        *p++ = 0;

    phe = FUNC3( host );
    if( !phe )
        goto use_default;

    FUNC6( &sa_logger.sin_addr.s_addr, phe->h_addr, phe->h_length );

    if( p )
        sa_logger.sin_port = FUNC5( (unsigned short) FUNC13( p, NULL, 0 ) );
    else
        sa_logger.sin_port = FUNC5( SYSLOG_PORT );
    return;

use_default:
    sa_logger.sin_addr.S_un.S_addr = FUNC4( 0x7F000001 );
    sa_logger.sin_port = FUNC5( SYSLOG_PORT );
}
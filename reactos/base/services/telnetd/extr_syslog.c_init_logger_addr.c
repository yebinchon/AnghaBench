
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct hostent {int h_length; int h_addr; } ;
typedef int host ;
struct TYPE_5__ {int S_addr; } ;
struct TYPE_6__ {TYPE_1__ S_un; int s_addr; } ;
struct TYPE_7__ {void* sin_port; TYPE_2__ sin_addr; int sin_family; } ;
typedef int SOCKADDR_IN ;
typedef int FILE ;


 int AF_INET ;
 int FILENAME_MAX ;
 unsigned short SYSLOG_PORT ;
 char** __argv ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 struct hostent* gethostbyname (char*) ;
 int htonl (int) ;
 void* htons (unsigned short) ;
 int memcpy (int *,int ,int ) ;
 int memset (TYPE_3__*,int ,int) ;
 TYPE_3__ sa_logger ;
 int strcat (char*,char*) ;
 char* strchr (char*,char) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 char* strrchr (char*,char) ;
 scalar_t__ strtoul (char*,int *,int ) ;
 char* syslog_conf_dir ;

__attribute__((used)) static void init_logger_addr()
{
    char pathname[ FILENAME_MAX ];
    char *p;
    FILE *fd;
    char host[256];
    struct hostent * phe;

    memset( &sa_logger, 0, sizeof(SOCKADDR_IN) );
    sa_logger.sin_family = AF_INET;

    if( '\\' == syslog_conf_dir[0] || '/' == syslog_conf_dir[0] || ':' == syslog_conf_dir[1] )
    {

        strcpy( pathname, syslog_conf_dir );
    }
    else
    {

        char *q;

        strcpy( pathname, __argv[0] );
        p = strrchr( pathname, '\\' ) + 1;
        q = strrchr( pathname, '/' ) + 1;
        if( p < q )
            *q = 0;
        else if( p > q )
            *p = 0;
        else
            pathname[0] = 0;
        strcat( pathname, syslog_conf_dir );
    }
    p = &pathname[ strlen( pathname ) - 1 ];
    if( '\\' != *p && '/' != *p )
    {
        p++; *p = '/';
    }
    strcpy( ++p, "syslog.host" );


    fd = fopen( pathname, "r" );
    if( !fd )
        goto use_default;

    if( ((void*)0) == fgets( host, sizeof(host), fd ) )
        host[0] = 0;
    else
    {
        p = strchr( host, '\n' );
        if( p )
            *p = 0;
        p = strchr( host, '\r' );
        if( p )
            *p = 0;
    }
    fclose( fd );

    p = strchr( host, ':' );
    if( p )
        *p++ = 0;

    phe = gethostbyname( host );
    if( !phe )
        goto use_default;

    memcpy( &sa_logger.sin_addr.s_addr, phe->h_addr, phe->h_length );

    if( p )
        sa_logger.sin_port = htons( (unsigned short) strtoul( p, ((void*)0), 0 ) );
    else
        sa_logger.sin_port = htons( SYSLOG_PORT );
    return;

use_default:
    sa_logger.sin_addr.S_un.S_addr = htonl( 0x7F000001 );
    sa_logger.sin_port = htons( SYSLOG_PORT );
}

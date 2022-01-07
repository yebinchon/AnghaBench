
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int va_list ;
struct TYPE_3__ {int wMonth; int wDay; int wHour; int wMinute; int wSecond; } ;
typedef TYPE_1__ SYSTEMTIME ;
typedef int SOCKADDR_IN ;
typedef int SOCKADDR ;


 int GetLocalTime (TYPE_1__*) ;
 int LOG_FACMASK ;
 int LOG_MASK (int ) ;
 int LOG_PRI (int) ;
 scalar_t__ datagramm ;
 scalar_t__ datagramm_size ;
 int initialized ;
 char* local_hostname ;
 int log_mask ;
 int openlog (int *,int ,int) ;
 int sa_logger ;
 int sendto (int ,scalar_t__,int ,int ,int *,int) ;
 int sock ;
 int sprintf (scalar_t__,char*,int,char*,int,int,int,int,char*,char*,int ) ;
 int str_pid ;
 char* strchr (scalar_t__,char) ;
 int strlen (scalar_t__) ;
 int syslog_facility ;
 char* syslog_ident ;
 int vsnprintf (scalar_t__,scalar_t__,char*,int ) ;

void vsyslog( int pri, char* fmt, va_list ap )
{
    static char *month[] = {"Jan", "Feb", "Mar", "Apr", "May", "Jun",
                            "Jul", "Aug", "Sep", "Oct", "Nov", "Dec" };
    SYSTEMTIME stm;
    int len;
    char *p;

    if( !(LOG_MASK( LOG_PRI( pri )) & log_mask) )
        return;

    openlog( ((void*)0), 0, pri & LOG_FACMASK );
    if( !initialized )
        return;

    if( !(pri & LOG_FACMASK) )
        pri |= syslog_facility;

    GetLocalTime( &stm );
    len = sprintf( datagramm, "<%d>%s %2d %02d:%02d:%02d %s %s%s: ",
                   pri,
                   month[ stm.wMonth - 1 ], stm.wDay, stm.wHour, stm.wMinute, stm.wSecond,
                   local_hostname, syslog_ident? syslog_ident : "", str_pid );
    vsnprintf( datagramm + len, datagramm_size - len, fmt, ap );
    p = strchr( datagramm, '\n' );
    if( p )
        *p = 0;
    p = strchr( datagramm, '\r' );
    if( p )
        *p = 0;

    sendto( sock, datagramm, strlen(datagramm), 0, (SOCKADDR*) &sa_logger, sizeof(SOCKADDR_IN) );
}

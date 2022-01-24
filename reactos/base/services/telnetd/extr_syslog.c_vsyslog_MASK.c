#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  va_list ;
struct TYPE_3__ {int wMonth; int wDay; int wHour; int wMinute; int wSecond; } ;
typedef  TYPE_1__ SYSTEMTIME ;
typedef  int /*<<< orphan*/  SOCKADDR_IN ;
typedef  int /*<<< orphan*/  SOCKADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int LOG_FACMASK ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ datagramm ; 
 scalar_t__ datagramm_size ; 
 int /*<<< orphan*/  initialized ; 
 char* local_hostname ; 
 int log_mask ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  sa_logger ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  sock ; 
 int FUNC5 (scalar_t__,char*,int,char*,int,int,int,int,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  str_pid ; 
 char* FUNC6 (scalar_t__,char) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int syslog_facility ; 
 char* syslog_ident ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__,char*,int /*<<< orphan*/ ) ; 

void FUNC9( int pri, char* fmt, va_list ap )
{
    static char *month[] = {"Jan", "Feb", "Mar", "Apr", "May", "Jun",
                            "Jul", "Aug", "Sep", "Oct", "Nov", "Dec" };
    SYSTEMTIME stm;
    int len;
    char *p;

    if( !(FUNC1( FUNC2( pri )) & log_mask) )
        return;

    FUNC3( NULL, 0, pri & LOG_FACMASK );
    if( !initialized )
        return;

    if( !(pri & LOG_FACMASK) )
        pri |= syslog_facility;

    FUNC0( &stm );
    len = FUNC5( datagramm, "<%d>%s %2d %02d:%02d:%02d %s %s%s: ",
                   pri,
                   month[ stm.wMonth - 1 ], stm.wDay, stm.wHour, stm.wMinute, stm.wSecond,
                   local_hostname, syslog_ident? syslog_ident : "", str_pid );
    FUNC8( datagramm + len, datagramm_size - len, fmt, ap );
    p = FUNC6( datagramm, '\n' );
    if( p )
        *p = 0;
    p = FUNC6( datagramm, '\r' );
    if( p )
        *p = 0;

    FUNC4( sock, datagramm, FUNC7(datagramm), 0, (SOCKADDR*) &sa_logger, sizeof(SOCKADDR_IN) );
}

typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ FALSE ;
 int WSACleanup () ;
 int closesocket (int ) ;
 scalar_t__ initialized ;
 int sock ;

void closelog()
{
    if( !initialized )
        return;
    closesocket( sock );
    WSACleanup();
    initialized = FALSE;
}

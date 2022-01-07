
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
typedef int socklen_t ;


 scalar_t__ ENOTCONN ;
 scalar_t__ errno ;
 scalar_t__ getpeername (int,struct sockaddr*,int*) ;

__attribute__((used)) static inline int isPipe( int fd )
{
    char achPeer[128];
    socklen_t len = 128;
    if (( getpeername( fd, (struct sockaddr *)achPeer, &len ) != 0 )&&
        ( errno == ENOTCONN ))
        return 0;
    else
        return 1;
}

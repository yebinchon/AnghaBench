
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ INVALID_SOCKET ;
 int SHUT_RD ;
 int acfd ;
 int shutdown (int,int ) ;

__attribute__((used)) static void sock_timeout(int signum)
{
    if (acfd != (int)INVALID_SOCKET)
        (void)shutdown(acfd, SHUT_RD);
}

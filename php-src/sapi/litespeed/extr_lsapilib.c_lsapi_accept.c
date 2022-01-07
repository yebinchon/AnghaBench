
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {scalar_t__ sa_family; } ;
typedef int socklen_t ;
typedef int nodelay ;
typedef int achPeer ;


 scalar_t__ AF_INET ;
 int IPPROTO_TCP ;
 int TCP_NODELAY ;
 int accept (int,struct sockaddr*,int*) ;
 int setsockopt (int,int ,int ,char*,int) ;

__attribute__((used)) static int lsapi_accept( int fdListen )
{
    int fd;
    int nodelay = 1;
    socklen_t len;
    char achPeer[128];

    len = sizeof( achPeer );
    fd = accept( fdListen, (struct sockaddr *)&achPeer, &len );
    if ( fd != -1 )
    {
        if (((struct sockaddr *)&achPeer)->sa_family == AF_INET )
        {
            setsockopt( fd, IPPROTO_TCP, TCP_NODELAY,
                    (char *)&nodelay, sizeof(nodelay));
        }




    }
    return fd;

}

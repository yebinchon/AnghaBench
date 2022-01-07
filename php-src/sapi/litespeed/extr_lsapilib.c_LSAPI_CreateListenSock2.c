
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_un {int sun_path; } ;
struct sockaddr_in6 {int dummy; } ;
struct sockaddr {int sa_family; } ;
typedef int flag ;





 int FD_CLOEXEC ;
 int F_SETFD ;
 int SOCK_STREAM ;
 int SOL_SOCKET ;
 int SO_REUSEADDR ;
 int bind (int,struct sockaddr const*,int) ;
 int close (int) ;
 int errno ;
 int fcntl (int,int ,int ) ;
 int listen (int,int) ;
 scalar_t__ setsockopt (int,int ,int ,char*,int) ;
 int socket (int,int ,int ) ;
 int unlink (int ) ;

int LSAPI_CreateListenSock2( const struct sockaddr * pServerAddr, int backlog )
{
    int ret;
    int fd;
    int flag = 1;
    int addr_len;

    switch( pServerAddr->sa_family )
    {
    case 130:
        addr_len = 16;
        break;
    case 129:
        addr_len = sizeof( struct sockaddr_in6 );
        break;
    case 128:
        addr_len = sizeof( struct sockaddr_un );
        unlink( ((struct sockaddr_un *)pServerAddr)->sun_path );
        break;
    default:
        return -1;
    }

    fd = socket( pServerAddr->sa_family, SOCK_STREAM, 0 );
    if ( fd == -1 )
        return -1;

    fcntl( fd, F_SETFD, FD_CLOEXEC );

    if(setsockopt( fd, SOL_SOCKET, SO_REUSEADDR,
                (char *)( &flag ), sizeof(flag)) == 0)
    {
        ret = bind( fd, pServerAddr, addr_len );
        if ( !ret )
        {
            ret = listen( fd, backlog );
            if ( !ret )
                return fd;
        }
    }

    ret = errno;
    close(fd);
    errno = ret;
    return -1;
}

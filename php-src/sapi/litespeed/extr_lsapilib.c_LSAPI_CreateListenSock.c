
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;


 int LSAPI_CreateListenSock2 (struct sockaddr*,int) ;
 int LSAPI_ParseSockAddr (char const*,struct sockaddr*) ;

int LSAPI_CreateListenSock( const char * pBind, int backlog )
{
    char serverAddr[128];
    int ret;
    int fd = -1;
    ret = LSAPI_ParseSockAddr( pBind, (struct sockaddr *)serverAddr );
    if ( !ret )
    {
        fd = LSAPI_CreateListenSock2( (struct sockaddr *)serverAddr, backlog );
    }
    return fd;
}

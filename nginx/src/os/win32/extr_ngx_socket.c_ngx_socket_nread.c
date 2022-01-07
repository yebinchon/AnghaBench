
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_socket_t ;


 int FIONREAD ;
 int ioctlsocket (int ,int ,unsigned long*) ;

int
ngx_socket_nread(ngx_socket_t s, int *n)
{
    unsigned long nread;

    if (ioctlsocket(s, FIONREAD, &nread) == -1) {
        return -1;
    }

    *n = nread;

    return 0;
}

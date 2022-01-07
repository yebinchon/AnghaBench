
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_socket_t ;


 int FIONBIO ;
 int ioctlsocket (int ,int ,unsigned long*) ;

int
ngx_blocking(ngx_socket_t s)
{
    unsigned long nb = 0;

    return ioctlsocket(s, FIONBIO, &nb);
}

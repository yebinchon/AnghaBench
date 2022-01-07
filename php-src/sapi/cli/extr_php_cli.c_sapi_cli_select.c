
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {long tv_sec; scalar_t__ tv_usec; } ;
typedef scalar_t__ php_socket_t ;
typedef int fd_set ;


 int FD_ZERO (int *) ;
 scalar_t__ FG (int ) ;
 int PHP_SAFE_FD_SET (scalar_t__,int *) ;
 int default_socket_timeout ;
 int php_select (scalar_t__,int *,int *,int *,struct timeval*) ;

__attribute__((used)) static inline int sapi_cli_select(php_socket_t fd)
{
 fd_set wfd;
 struct timeval tv;
 int ret;

 FD_ZERO(&wfd);

 PHP_SAFE_FD_SET(fd, &wfd);

 tv.tv_sec = (long)FG(default_socket_timeout);
 tv.tv_usec = 0;

 ret = php_select(fd+1, ((void*)0), &wfd, ((void*)0), &tv);

 return ret != -1;
}

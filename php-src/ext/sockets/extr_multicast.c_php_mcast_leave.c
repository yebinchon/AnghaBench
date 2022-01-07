
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef int php_socket ;


 int _php_mcast_join_leave (int *,int,struct sockaddr*,int ,unsigned int,int ) ;

int php_mcast_leave(
 php_socket *sock,
 int level,
 struct sockaddr *group,
 socklen_t group_len,
 unsigned int if_index)
{
 return _php_mcast_join_leave(sock, level, group, group_len, if_index, 0);
}

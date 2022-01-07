
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef int php_socket ;


 int UNBLOCK_SOURCE ;
 int _php_mcast_source_op (int *,int,struct sockaddr*,int ,struct sockaddr*,int ,unsigned int,int ) ;

int php_mcast_unblock_source(
 php_socket *sock,
 int level,
 struct sockaddr *group,
 socklen_t group_len,
 struct sockaddr *source,
 socklen_t source_len,
 unsigned int if_index)
{
 return _php_mcast_source_op(sock, level, group, group_len, source, source_len, if_index, UNBLOCK_SOURCE);
}

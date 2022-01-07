
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int socket_set ;


 scalar_t__ pg_malloc0 (int) ;

__attribute__((used)) static socket_set *
alloc_socket_set(int count)
{
 return (socket_set *) pg_malloc0(sizeof(socket_set));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int socket_set ;


 int pg_free (int *) ;

__attribute__((used)) static void
free_socket_set(socket_set *sa)
{
 pg_free(sa);
}

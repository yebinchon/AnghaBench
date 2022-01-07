
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int dummy; } ;


 struct connection* actual_connection ;
 int actual_connection_key ;
 int connections_mutex ;
 struct connection* ecpg_get_connection_nr (char const*) ;
 struct connection* pthread_getspecific (int ) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 scalar_t__ strcmp (char const*,char*) ;

struct connection *
ecpg_get_connection(const char *connection_name)
{
 struct connection *ret = ((void*)0);

 if ((connection_name == ((void*)0)) || (strcmp(connection_name, "CURRENT") == 0))
 {
  ret = actual_connection;

 }
 else
 {




  ret = ecpg_get_connection_nr(connection_name);




 }

 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {char* name; struct connection* next; } ;


 struct connection* actual_connection ;
 int actual_connection_key ;
 struct connection* all_connections ;
 struct connection* pthread_getspecific (int ) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static struct connection *
ecpg_get_connection_nr(const char *connection_name)
{
 struct connection *ret = ((void*)0);

 if ((connection_name == ((void*)0)) || (strcmp(connection_name, "CURRENT") == 0))
 {
  ret = actual_connection;

 }
 else
 {
  struct connection *con;

  for (con = all_connections; con != ((void*)0); con = con->next)
  {
   if (strcmp(connection_name, con->name) == 0)
    break;
  }
  ret = con;
 }

 return ret;
}

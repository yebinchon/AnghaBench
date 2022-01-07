
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ecpg_deallocate_all_conn (int,int,int ) ;
 int ecpg_get_connection (char const*) ;

bool
ECPGdeallocate_all(int lineno, int compat, const char *connection_name)
{
 return ecpg_deallocate_all_conn(lineno, compat,
         ecpg_get_connection(connection_name));
}

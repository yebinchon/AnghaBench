
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ecpg_get_connection (char const*) ;
 char* ecpg_prepared (char const*,int ) ;

char *
ECPGprepared_statement(const char *connection_name, const char *name, int lineno)
{
 (void) lineno;

 return ecpg_prepared(name, ecpg_get_connection(connection_name));
}

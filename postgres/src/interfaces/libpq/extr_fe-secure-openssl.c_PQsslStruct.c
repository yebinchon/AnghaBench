
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* ssl; } ;
typedef TYPE_1__ PGconn ;


 scalar_t__ strcmp (char const*,char*) ;

void *
PQsslStruct(PGconn *conn, const char *struct_name)
{
 if (!conn)
  return ((void*)0);
 if (strcmp(struct_name, "OpenSSL") == 0)
  return conn->ssl;
 return ((void*)0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ password_needed; } ;
typedef TYPE_1__ PGconn ;


 char* PQpass (TYPE_1__ const*) ;

int
PQconnectionNeedsPassword(const PGconn *conn)
{
 char *password;

 if (!conn)
  return 0;
 password = PQpass(conn);
 if (conn->password_needed &&
  (password == ((void*)0) || password[0] == '\0'))
  return 1;
 else
  return 0;
}

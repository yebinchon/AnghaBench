
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* pgtty; } ;
typedef TYPE_1__ PGconn ;



char *
PQtty(const PGconn *conn)
{
 if (!conn)
  return ((void*)0);
 return conn->pgtty;
}

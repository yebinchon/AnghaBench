
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ status; int client_encoding; } ;
typedef TYPE_1__ PGconn ;


 scalar_t__ CONNECTION_OK ;

int
PQclientEncoding(const PGconn *conn)
{
 if (!conn || conn->status != CONNECTION_OK)
  return -1;
 return conn->client_encoding;
}

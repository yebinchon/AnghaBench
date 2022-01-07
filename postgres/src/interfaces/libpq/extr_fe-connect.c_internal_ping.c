
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ status; int last_sqlstate; scalar_t__ auth_req_received; int options_valid; } ;
typedef TYPE_1__ PGconn ;
typedef int PGPing ;


 scalar_t__ CONNECTION_BAD ;
 int ERRCODE_CANNOT_CONNECT_NOW ;
 int PQPING_NO_ATTEMPT ;
 int PQPING_NO_RESPONSE ;
 int PQPING_OK ;
 int PQPING_REJECT ;
 int connectDBComplete (TYPE_1__*) ;
 scalar_t__ strcmp (int ,int ) ;
 int strlen (int ) ;

__attribute__((used)) static PGPing
internal_ping(PGconn *conn)
{

 if (!conn || !conn->options_valid)
  return PQPING_NO_ATTEMPT;


 if (conn->status != CONNECTION_BAD)
  (void) connectDBComplete(conn);


 if (conn->status != CONNECTION_BAD)
  return PQPING_OK;
 if (conn->auth_req_received)
  return PQPING_OK;
 if (strlen(conn->last_sqlstate) != 5)
  return PQPING_NO_RESPONSE;





 if (strcmp(conn->last_sqlstate, ERRCODE_CANNOT_CONNECT_NOW) == 0)
  return PQPING_REJECT;







 return PQPING_OK;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct addrinfo {int dummy; } ;
struct TYPE_6__ {scalar_t__ status; int whichhost; int try_next_addr; int errorMessage; struct addrinfo* addr_cur; int * connect_timeout; } ;
typedef int PostgresPollingStatusType ;
typedef TYPE_1__ PGconn ;


 scalar_t__ CONNECTION_BAD ;
 scalar_t__ CONNECTION_NEEDED ;



 int PQconnectPoll (TYPE_1__*) ;
 int parse_int_param (int *,int*,TYPE_1__*,char*) ;
 int pqWaitTimed (int,int,TYPE_1__*,scalar_t__) ;
 int resetPQExpBuffer (int *) ;
 scalar_t__ time (int *) ;

__attribute__((used)) static int
connectDBComplete(PGconn *conn)
{
 PostgresPollingStatusType flag = 128;
 time_t finish_time = ((time_t) -1);
 int timeout = 0;
 int last_whichhost = -2;
 struct addrinfo *last_addr_cur = ((void*)0);

 if (conn == ((void*)0) || conn->status == CONNECTION_BAD)
  return 0;




 if (conn->connect_timeout != ((void*)0))
 {
  if (!parse_int_param(conn->connect_timeout, &timeout, conn,
        "connect_timeout"))
  {

   conn->status = CONNECTION_BAD;
   return 0;
  }

  if (timeout > 0)
  {





   if (timeout < 2)
    timeout = 2;
  }
  else
   timeout = 0;
 }

 for (;;)
 {
  int ret = 0;






  if (flag != 130 &&
   timeout > 0 &&
   (conn->whichhost != last_whichhost ||
    conn->addr_cur != last_addr_cur))
  {
   finish_time = time(((void*)0)) + timeout;
   last_whichhost = conn->whichhost;
   last_addr_cur = conn->addr_cur;
  }





  switch (flag)
  {
   case 130:





    resetPQExpBuffer(&conn->errorMessage);
    return 1;

   case 129:
    ret = pqWaitTimed(1, 0, conn, finish_time);
    if (ret == -1)
    {

     conn->status = CONNECTION_BAD;
     return 0;
    }
    break;

   case 128:
    ret = pqWaitTimed(0, 1, conn, finish_time);
    if (ret == -1)
    {

     conn->status = CONNECTION_BAD;
     return 0;
    }
    break;

   default:

    conn->status = CONNECTION_BAD;
    return 0;
  }

  if (ret == 1)
  {



   conn->try_next_addr = 1;
   conn->status = CONNECTION_NEEDED;
  }




  flag = PQconnectPoll(conn);
 }
}

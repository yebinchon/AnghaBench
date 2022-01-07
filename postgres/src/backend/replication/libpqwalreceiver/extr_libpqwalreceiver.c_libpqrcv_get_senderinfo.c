
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * streamConn; } ;
typedef TYPE_1__ WalReceiverConn ;


 int Assert (int ) ;
 char* PQhost (int *) ;
 char* PQport (int *) ;
 int atoi (char*) ;
 char* pstrdup (char*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static void
libpqrcv_get_senderinfo(WalReceiverConn *conn, char **sender_host,
      int *sender_port)
{
 char *ret = ((void*)0);

 *sender_host = ((void*)0);
 *sender_port = 0;

 Assert(conn->streamConn != ((void*)0));

 ret = PQhost(conn->streamConn);
 if (ret && strlen(ret) != 0)
  *sender_host = pstrdup(ret);

 ret = PQport(conn->streamConn);
 if (ret && strlen(ret) != 0)
  *sender_port = atoi(ret);
}

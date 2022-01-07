
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* channel_binding; int errorMessage; int sasl_state; } ;
typedef TYPE_1__ PGconn ;
typedef int AuthRequest ;






 int libpq_gettext (char*) ;
 int pg_fe_scram_channel_bound (int ) ;
 int printfPQExpBuffer (int *,int ) ;

__attribute__((used)) static bool
check_expected_areq(AuthRequest areq, PGconn *conn)
{
 bool result = 1;
 if (conn->channel_binding[0] == 'r' )
 {
  switch (areq)
  {
   case 130:
   case 129:
   case 128:
    break;
   case 131:
    if (!pg_fe_scram_channel_bound(conn->sasl_state))
    {
     printfPQExpBuffer(&conn->errorMessage,
           libpq_gettext("Channel binding required, but server authenticated client without channel binding\n"));
     result = 0;
    }
    break;
   default:
    printfPQExpBuffer(&conn->errorMessage,
          libpq_gettext("Channel binding required but not supported by server's authentication request\n"));
    result = 0;
    break;
  }
 }

 return result;
}

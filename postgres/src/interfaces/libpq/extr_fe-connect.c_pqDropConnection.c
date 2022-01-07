
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ sock; int * sasl_state; scalar_t__ usesspi; int * sspictx; int * sspicred; int * sspitarget; int gtarg_nam; int gctx; scalar_t__ outCount; scalar_t__ inEnd; scalar_t__ inCursor; scalar_t__ inStart; } ;
typedef TYPE_1__ PGconn ;
typedef int OM_uint32 ;


 int DeleteSecurityContext (int *) ;
 int FreeCredentialsHandle (int *) ;
 int GSS_C_NO_BUFFER ;
 scalar_t__ PGINVALID_SOCKET ;
 int closesocket (scalar_t__) ;
 int free (int *) ;
 int gss_delete_sec_context (int *,int *,int ) ;
 int gss_release_name (int *,int *) ;
 int pg_fe_scram_free (int *) ;
 int pqsecure_close (TYPE_1__*) ;

void
pqDropConnection(PGconn *conn, bool flushInput)
{

 pqsecure_close(conn);


 if (conn->sock != PGINVALID_SOCKET)
  closesocket(conn->sock);
 conn->sock = PGINVALID_SOCKET;


 if (flushInput)
  conn->inStart = conn->inCursor = conn->inEnd = 0;


 conn->outCount = 0;
 if (conn->sasl_state)
 {




  pg_fe_scram_free(conn->sasl_state);
  conn->sasl_state = ((void*)0);
 }
}

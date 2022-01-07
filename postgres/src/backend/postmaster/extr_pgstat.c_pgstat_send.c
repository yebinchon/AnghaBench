
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int m_size; } ;
typedef TYPE_1__ PgStat_MsgHdr ;


 scalar_t__ EINTR ;
 int LOG ;
 scalar_t__ PGINVALID_SOCKET ;
 int elog (int ,char*) ;
 scalar_t__ errno ;
 scalar_t__ pgStatSock ;
 int send (scalar_t__,void*,int,int ) ;

__attribute__((used)) static void
pgstat_send(void *msg, int len)
{
 int rc;

 if (pgStatSock == PGINVALID_SOCKET)
  return;

 ((PgStat_MsgHdr *) msg)->m_size = len;


 do
 {
  rc = send(pgStatSock, msg, len, 0);
 } while (rc < 0 && errno == EINTR);






}

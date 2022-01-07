
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int formats; scalar_t__ tupDesc; } ;
typedef TYPE_1__* Portal ;


 scalar_t__ DestRemote ;
 int ERRCODE_IN_FAILED_SQL_TRANSACTION ;
 int ERRCODE_UNDEFINED_CURSOR ;
 int ERROR ;
 int FetchPortalTargetList (TYPE_1__*) ;
 TYPE_1__* GetPortalByName (char const*) ;
 scalar_t__ IsAbortedTransactionBlockState () ;
 int MemoryContextSwitchTo (int ) ;
 int MessageContext ;
 int PortalIsValid (TYPE_1__*) ;
 int SendRowDescriptionMessage (int *,scalar_t__,int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail_abort () ;
 int errmsg (char*,...) ;
 int pq_putemptymessage (char) ;
 int row_description_buf ;
 int start_xact_command () ;
 scalar_t__ whereToSendOutput ;

__attribute__((used)) static void
exec_describe_portal_message(const char *portal_name)
{
 Portal portal;





 start_xact_command();


 MemoryContextSwitchTo(MessageContext);

 portal = GetPortalByName(portal_name);
 if (!PortalIsValid(portal))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_CURSOR),
     errmsg("portal \"%s\" does not exist", portal_name)));
 if (IsAbortedTransactionBlockState() &&
  portal->tupDesc)
  ereport(ERROR,
    (errcode(ERRCODE_IN_FAILED_SQL_TRANSACTION),
     errmsg("current transaction is aborted, "
      "commands ignored until end of transaction block"),
     errdetail_abort()));

 if (whereToSendOutput != DestRemote)
  return;

 if (portal->tupDesc)
  SendRowDescriptionMessage(&row_description_buf,
          portal->tupDesc,
          FetchPortalTargetList(portal),
          portal->formats);
 else
  pq_putemptymessage('n');
}

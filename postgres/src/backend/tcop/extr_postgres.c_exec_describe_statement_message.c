
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int num_params; scalar_t__ resultDesc; scalar_t__* param_types; int fixed_result; } ;
struct TYPE_6__ {TYPE_2__* plansource; } ;
typedef TYPE_1__ PreparedStatement ;
typedef scalar_t__ Oid ;
typedef int List ;
typedef TYPE_2__ CachedPlanSource ;


 int Assert (int ) ;
 int * CachedPlanGetTargetList (TYPE_2__*,int *) ;
 scalar_t__ DestRemote ;
 int ERRCODE_IN_FAILED_SQL_TRANSACTION ;
 int ERRCODE_UNDEFINED_PSTATEMENT ;
 int ERROR ;
 TYPE_1__* FetchPreparedStatement (char const*,int) ;
 scalar_t__ IsAbortedTransactionBlockState () ;
 int MemoryContextSwitchTo (int ) ;
 int MessageContext ;
 int SendRowDescriptionMessage (int *,scalar_t__,int *,int *) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail_abort () ;
 int errmsg (char*) ;
 int pq_beginmessage_reuse (int *,char) ;
 int pq_endmessage_reuse (int *) ;
 int pq_putemptymessage (char) ;
 int pq_sendint16 (int *,int) ;
 int pq_sendint32 (int *,int) ;
 int row_description_buf ;
 int start_xact_command () ;
 TYPE_2__* unnamed_stmt_psrc ;
 scalar_t__ whereToSendOutput ;

__attribute__((used)) static void
exec_describe_statement_message(const char *stmt_name)
{
 CachedPlanSource *psrc;





 start_xact_command();


 MemoryContextSwitchTo(MessageContext);


 if (stmt_name[0] != '\0')
 {
  PreparedStatement *pstmt;

  pstmt = FetchPreparedStatement(stmt_name, 1);
  psrc = pstmt->plansource;
 }
 else
 {

  psrc = unnamed_stmt_psrc;
  if (!psrc)
   ereport(ERROR,
     (errcode(ERRCODE_UNDEFINED_PSTATEMENT),
      errmsg("unnamed prepared statement does not exist")));
 }


 Assert(psrc->fixed_result);
 if (IsAbortedTransactionBlockState() &&
  psrc->resultDesc)
  ereport(ERROR,
    (errcode(ERRCODE_IN_FAILED_SQL_TRANSACTION),
     errmsg("current transaction is aborted, "
      "commands ignored until end of transaction block"),
     errdetail_abort()));

 if (whereToSendOutput != DestRemote)
  return;




 pq_beginmessage_reuse(&row_description_buf, 't');

 pq_sendint16(&row_description_buf, psrc->num_params);

 for (int i = 0; i < psrc->num_params; i++)
 {
  Oid ptype = psrc->param_types[i];

  pq_sendint32(&row_description_buf, (int) ptype);
 }
 pq_endmessage_reuse(&row_description_buf);




 if (psrc->resultDesc)
 {
  List *tlist;


  tlist = CachedPlanGetTargetList(psrc, ((void*)0));

  SendRowDescriptionMessage(&row_description_buf,
          psrc->resultDesc,
          tlist,
          ((void*)0));
 }
 else
  pq_putemptymessage('n');

}

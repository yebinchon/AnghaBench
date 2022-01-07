
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ fn_strict; } ;
struct fp_info {int fname; int rettype; TYPE_7__ flinfo; int namespace; } ;
typedef int int16 ;
struct TYPE_10__ {int nargs; int isnull; TYPE_1__* args; } ;
struct TYPE_9__ {scalar_t__ isnull; } ;
typedef int StringInfo ;
typedef scalar_t__ Oid ;
typedef scalar_t__ Datum ;
typedef scalar_t__ AclResult ;


 scalar_t__ ACLCHECK_OK ;
 int ACL_EXECUTE ;
 int ACL_USAGE ;
 int CHECK_FOR_INTERRUPTS () ;
 int ERRCODE_IN_FAILED_SQL_TRANSACTION ;
 int ERROR ;
 int FUNC_MAX_ARGS ;
 int FrontendProtocol ;
 scalar_t__ FunctionCallInvoke (TYPE_2__*) ;
 int GetTransactionSnapshot () ;
 int GetUserId () ;
 int InitFunctionCallInfoData (TYPE_2__,TYPE_7__*,int ,int ,int *,int *) ;
 int InvalidOid ;
 int InvokeFunctionExecuteHook (scalar_t__) ;
 int InvokeNamespaceSearchHook (int ,int) ;
 scalar_t__ IsAbortedTransactionBlockState () ;
 int LOCAL_FCINFO (TYPE_2__*,int ) ;
 int LOG ;
 scalar_t__ LOGSTMT_ALL ;
 int OBJECT_FUNCTION ;
 int OBJECT_SCHEMA ;
 int PG_PROTOCOL_MAJOR (int ) ;
 int PopActiveSnapshot () ;
 int PushActiveSnapshot (int ) ;
 int SendFunctionResult (scalar_t__,int,int ,int ) ;
 int aclcheck_error (scalar_t__,int ,int ) ;
 int check_log_duration (char*,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,...) ;
 TYPE_2__* fcinfo ;
 int fetch_fp_info (scalar_t__,struct fp_info*) ;
 int get_func_name (scalar_t__) ;
 int get_namespace_name (int ) ;
 scalar_t__ log_statement ;
 int parse_fcall_arguments (int ,struct fp_info*,TYPE_2__*) ;
 int parse_fcall_arguments_20 (int ,struct fp_info*,TYPE_2__*) ;
 scalar_t__ pg_namespace_aclcheck (int ,int ,int ) ;
 scalar_t__ pg_proc_aclcheck (scalar_t__,int ,int ) ;
 int pq_getmsgend (int ) ;
 scalar_t__ pq_getmsgint (int ,int) ;
 int pq_getmsgstring (int ) ;

void
HandleFunctionRequest(StringInfo msgBuf)
{
 LOCAL_FCINFO(fcinfo, FUNC_MAX_ARGS);
 Oid fid;
 AclResult aclresult;
 int16 rformat;
 Datum retval;
 struct fp_info my_fp;
 struct fp_info *fip;
 bool callit;
 bool was_logged = 0;
 char msec_str[32];





 if (IsAbortedTransactionBlockState())
  ereport(ERROR,
    (errcode(ERRCODE_IN_FAILED_SQL_TRANSACTION),
     errmsg("current transaction is aborted, "
      "commands ignored until end of transaction block")));





 PushActiveSnapshot(GetTransactionSnapshot());




 if (PG_PROTOCOL_MAJOR(FrontendProtocol) < 3)
  (void) pq_getmsgstring(msgBuf);

 fid = (Oid) pq_getmsgint(msgBuf, 4);





 fip = &my_fp;
 fetch_fp_info(fid, fip);


 if (log_statement == LOGSTMT_ALL)
 {
  ereport(LOG,
    (errmsg("fastpath function call: \"%s\" (OID %u)",
      fip->fname, fid)));
  was_logged = 1;
 }





 aclresult = pg_namespace_aclcheck(fip->namespace, GetUserId(), ACL_USAGE);
 if (aclresult != ACLCHECK_OK)
  aclcheck_error(aclresult, OBJECT_SCHEMA,
        get_namespace_name(fip->namespace));
 InvokeNamespaceSearchHook(fip->namespace, 1);

 aclresult = pg_proc_aclcheck(fid, GetUserId(), ACL_EXECUTE);
 if (aclresult != ACLCHECK_OK)
  aclcheck_error(aclresult, OBJECT_FUNCTION,
        get_func_name(fid));
 InvokeFunctionExecuteHook(fid);
 InitFunctionCallInfoData(*fcinfo, &fip->flinfo, 0, InvalidOid, ((void*)0), ((void*)0));

 if (PG_PROTOCOL_MAJOR(FrontendProtocol) >= 3)
  rformat = parse_fcall_arguments(msgBuf, fip, fcinfo);
 else
  rformat = parse_fcall_arguments_20(msgBuf, fip, fcinfo);


 pq_getmsgend(msgBuf);




 callit = 1;
 if (fip->flinfo.fn_strict)
 {
  int i;

  for (i = 0; i < fcinfo->nargs; i++)
  {
   if (fcinfo->args[i].isnull)
   {
    callit = 0;
    break;
   }
  }
 }

 if (callit)
 {

  retval = FunctionCallInvoke(fcinfo);
 }
 else
 {
  fcinfo->isnull = 1;
  retval = (Datum) 0;
 }


 CHECK_FOR_INTERRUPTS();

 SendFunctionResult(retval, fcinfo->isnull, fip->rettype, rformat);


 PopActiveSnapshot();




 switch (check_log_duration(msec_str, was_logged))
 {
  case 1:
   ereport(LOG,
     (errmsg("duration: %s ms", msec_str)));
   break;
  case 2:
   ereport(LOG,
     (errmsg("duration: %s ms  fastpath function call: \"%s\" (OID %u)",
       msec_str, fip->fname, fid)));
   break;
 }
}

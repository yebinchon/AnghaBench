
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERRCODE_INVALID_TRANSACTION_STATE ;
 int ERROR ;
 scalar_t__ InitializingParallelWorker ;
 scalar_t__ IsParallelWorker () ;
 int LOG ;
 scalar_t__ SetClientEncoding (int) ;
 int elog (int ,char*,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;

void
assign_client_encoding(const char *newval, void *extra)
{
 int encoding = *((int *) extra);





 if (IsParallelWorker())
 {





  if (InitializingParallelWorker)
   return;






  ereport(ERROR,
    (errcode(ERRCODE_INVALID_TRANSACTION_STATE),
     errmsg("cannot change client_encoding during a parallel operation")));
 }


 if (SetClientEncoding(encoding) < 0)
  elog(LOG, "SetClientEncoding(%d) failed", encoding);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERRCODE_INVALID_TRANSACTION_STATE ;
 int ERROR ;
 scalar_t__ IsInParallelMode () ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*) ;

void
PreventCommandIfParallelMode(const char *cmdname)
{
 if (IsInParallelMode())
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_TRANSACTION_STATE),

     errmsg("cannot execute %s during a parallel operation",
      cmdname)));
}

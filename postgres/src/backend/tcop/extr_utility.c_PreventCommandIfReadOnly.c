
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERRCODE_READ_ONLY_SQL_TRANSACTION ;
 int ERROR ;
 scalar_t__ XactReadOnly ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*) ;

void
PreventCommandIfReadOnly(const char *cmdname)
{
 if (XactReadOnly)
  ereport(ERROR,
    (errcode(ERRCODE_READ_ONLY_SQL_TRANSACTION),

     errmsg("cannot execute %s in a read-only transaction",
      cmdname)));
}

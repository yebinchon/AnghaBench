
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;


 int ERRCODE_PROTOCOL_VIOLATION ;
 int ERROR ;
 scalar_t__ IsTransactionState () ;
 int am_tablesync_worker () ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int in_remote_transaction ;

__attribute__((used)) static void
apply_handle_origin(StringInfo s)
{




 if (!in_remote_transaction ||
  (IsTransactionState() && !am_tablesync_worker()))
  ereport(ERROR,
    (errcode(ERRCODE_PROTOCOL_VIOLATION),
     errmsg("ORIGIN message sent out of order")));
}

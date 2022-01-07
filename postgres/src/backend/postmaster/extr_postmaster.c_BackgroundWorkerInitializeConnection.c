
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_3__ {int bgw_flags; } ;
typedef TYPE_1__ BackgroundWorker ;


 int BGWORKER_BACKEND_DATABASE_CONNECTION ;
 int BGWORKER_BYPASS_ALLOWCONN ;
 int ERRCODE_PROGRAM_LIMIT_EXCEEDED ;
 int ERROR ;
 int FATAL ;
 int InitPostgres (char const*,int ,char const*,int ,int *,int) ;
 int InvalidOid ;
 int IsInitProcessingMode () ;
 TYPE_1__* MyBgworkerEntry ;
 int NormalProcessing ;
 int SetProcessingMode (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;

void
BackgroundWorkerInitializeConnection(const char *dbname, const char *username, uint32 flags)
{
 BackgroundWorker *worker = MyBgworkerEntry;


 if (!(worker->bgw_flags & BGWORKER_BACKEND_DATABASE_CONNECTION))
  ereport(FATAL,
    (errcode(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
     errmsg("database connection requirement not indicated during registration")));

 InitPostgres(dbname, InvalidOid, username, InvalidOid, ((void*)0), (flags & BGWORKER_BYPASS_ALLOWCONN) != 0);


 if (!IsInitProcessingMode())
  ereport(ERROR,
    (errmsg("invalid processing mode in background worker")));
 SetProcessingMode(NormalProcessing);
}

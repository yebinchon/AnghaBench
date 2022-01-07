
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int errbuf ;
typedef int TimestampTz ;
typedef int PGresult ;
typedef int PGconn ;
typedef int PGcancel ;


 int ERRCODE_CONNECTION_FAILURE ;
 int GetCurrentTimestamp () ;
 int PQcancel (int *,char*,int) ;
 int PQclear (int *) ;
 int PQfreeCancel (int *) ;
 int * PQgetCancel (int *) ;
 int TimestampTzPlusMilliseconds (int ,int) ;
 int WARNING ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char*) ;
 scalar_t__ pgfdw_get_cleanup_result (int *,int ,int **) ;

__attribute__((used)) static bool
pgfdw_cancel_query(PGconn *conn)
{
 PGcancel *cancel;
 char errbuf[256];
 PGresult *result = ((void*)0);
 TimestampTz endtime;





 endtime = TimestampTzPlusMilliseconds(GetCurrentTimestamp(), 30000);





 if ((cancel = PQgetCancel(conn)))
 {
  if (!PQcancel(cancel, errbuf, sizeof(errbuf)))
  {
   ereport(WARNING,
     (errcode(ERRCODE_CONNECTION_FAILURE),
      errmsg("could not send cancel request: %s",
       errbuf)));
   PQfreeCancel(cancel);
   return 0;
  }
  PQfreeCancel(cancel);
 }


 if (pgfdw_get_cleanup_result(conn, endtime, &result))
  return 0;
 PQclear(result);

 return 1;
}

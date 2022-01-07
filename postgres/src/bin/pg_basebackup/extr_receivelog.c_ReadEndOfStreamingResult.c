
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;
typedef int uint32 ;
typedef int XLogRecPtr ;
typedef int PGresult ;


 int PQgetvalue (int *,int ,int) ;
 int PQnfields (int *) ;
 int PQntuples (int *) ;
 int atoi (int ) ;
 int pg_log_error (char*,int,...) ;
 int sscanf (int ,char*,int*,int*) ;

__attribute__((used)) static bool
ReadEndOfStreamingResult(PGresult *res, XLogRecPtr *startpos, uint32 *timeline)
{
 uint32 startpos_xlogid,
    startpos_xrecoff;
 if (PQnfields(res) < 2 || PQntuples(res) != 1)
 {
  pg_log_error("unexpected result set after end-of-timeline: got %d rows and %d fields, expected %d rows and %d fields",
      PQntuples(res), PQnfields(res), 1, 2);
  return 0;
 }

 *timeline = atoi(PQgetvalue(res, 0, 0));
 if (sscanf(PQgetvalue(res, 0, 1), "%X/%X", &startpos_xlogid,
      &startpos_xrecoff) != 2)
 {
  pg_log_error("could not parse next timeline's starting point \"%s\"",
      PQgetvalue(res, 0, 1));
  return 0;
 }
 *startpos = ((uint64) startpos_xlogid << 32) | startpos_xrecoff;

 return 1;
}

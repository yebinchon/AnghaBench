
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PsqlScanState ;
typedef int PQExpBuffer ;


 int OT_NORMAL ;
 int appendPQExpBufferChar (int ,char) ;
 int appendPQExpBufferStr (int ,char*) ;
 int createPQExpBuffer () ;
 int free (char*) ;
 char* psql_scan_slash_option (int ,int ,int *,int) ;

__attribute__((used)) static PQExpBuffer
gather_boolean_expression(PsqlScanState scan_state)
{
 PQExpBuffer exp_buf = createPQExpBuffer();
 int num_options = 0;
 char *value;


 while ((value = psql_scan_slash_option(scan_state,
             OT_NORMAL, ((void*)0), 0)) != ((void*)0))
 {

  if (num_options > 0)
   appendPQExpBufferChar(exp_buf, ' ');
  appendPQExpBufferStr(exp_buf, value);
  num_options++;
  free(value);
 }

 return exp_buf;
}

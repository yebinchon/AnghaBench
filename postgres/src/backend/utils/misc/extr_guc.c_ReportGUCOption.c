
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_generic {int flags; char* name; } ;
typedef int StringInfoData ;


 int GUC_REPORT ;
 char* _ShowOption (struct config_generic*,int) ;
 int pfree (char*) ;
 int pq_beginmessage (int *,char) ;
 int pq_endmessage (int *) ;
 int pq_sendstring (int *,char*) ;
 scalar_t__ reporting_enabled ;

__attribute__((used)) static void
ReportGUCOption(struct config_generic *record)
{
 if (reporting_enabled && (record->flags & GUC_REPORT))
 {
  char *val = _ShowOption(record, 0);
  StringInfoData msgbuf;

  pq_beginmessage(&msgbuf, 'S');
  pq_sendstring(&msgbuf, record->name);
  pq_sendstring(&msgbuf, val);
  pq_endmessage(&msgbuf);

  pfree(val);
 }
}

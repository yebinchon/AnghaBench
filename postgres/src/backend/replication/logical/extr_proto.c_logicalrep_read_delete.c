
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int LogicalRepTupleData ;
typedef int LogicalRepRelId ;


 int ERROR ;
 int elog (int ,char*,char) ;
 int logicalrep_read_tuple (int ,int *) ;
 char pq_getmsgbyte (int ) ;
 int pq_getmsgint (int ,int) ;

LogicalRepRelId
logicalrep_read_delete(StringInfo in, LogicalRepTupleData *oldtup)
{
 char action;
 LogicalRepRelId relid;


 relid = pq_getmsgint(in, 4);


 action = pq_getmsgbyte(in);
 if (action != 'K' && action != 'O')
  elog(ERROR, "expected action 'O' or 'K', got %c", action);

 logicalrep_read_tuple(in, oldtup);

 return relid;
}


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
logicalrep_read_update(StringInfo in, bool *has_oldtuple,
        LogicalRepTupleData *oldtup,
        LogicalRepTupleData *newtup)
{
 char action;
 LogicalRepRelId relid;


 relid = pq_getmsgint(in, 4);


 action = pq_getmsgbyte(in);
 if (action != 'K' && action != 'O' && action != 'N')
  elog(ERROR, "expected action 'N', 'O' or 'K', got %c",
    action);


 if (action == 'K' || action == 'O')
 {
  logicalrep_read_tuple(in, oldtup);
  *has_oldtuple = 1;

  action = pq_getmsgbyte(in);
 }
 else
  *has_oldtuple = 0;


 if (action != 'N')
  elog(ERROR, "expected action 'N', got %c",
    action);

 logicalrep_read_tuple(in, newtup);

 return relid;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int int16 ;
typedef TYPE_1__* TupleDesc ;
struct TYPE_5__ {int natts; } ;
typedef int StringInfo ;
typedef int List ;


 int FrontendProtocol ;
 int PG_PROTOCOL_MAJOR (int ) ;
 int SendRowDescriptionCols_2 (int ,TYPE_1__*,int *,int *) ;
 int SendRowDescriptionCols_3 (int ,TYPE_1__*,int *,int *) ;
 int pq_beginmessage_reuse (int ,char) ;
 int pq_endmessage_reuse (int ) ;
 int pq_sendint16 (int ,int) ;

void
SendRowDescriptionMessage(StringInfo buf, TupleDesc typeinfo,
        List *targetlist, int16 *formats)
{
 int natts = typeinfo->natts;
 int proto = PG_PROTOCOL_MAJOR(FrontendProtocol);


 pq_beginmessage_reuse(buf, 'T');

 pq_sendint16(buf, natts);

 if (proto >= 3)
  SendRowDescriptionCols_3(buf, typeinfo, targetlist, formats);
 else
  SendRowDescriptionCols_2(buf, typeinfo, targetlist, formats);

 pq_endmessage_reuse(buf);
}

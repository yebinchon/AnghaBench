
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* TupleDesc ;
struct TYPE_7__ {int attlen; int atttypmod; scalar_t__ atttypid; int attname; } ;
struct TYPE_6__ {int natts; } ;
typedef int StringInfoData ;
typedef TYPE_2__* Form_pg_attribute ;
typedef int DestReceiver ;


 int NameStr (int ) ;
 TYPE_2__* TupleDescAttr (TYPE_1__*,int) ;
 int pq_beginmessage (int *,char) ;
 int pq_endmessage (int *) ;
 int pq_sendint16 (int *,int) ;
 int pq_sendint32 (int *,int) ;
 int pq_sendstring (int *,int ) ;

void
printsimple_startup(DestReceiver *self, int operation, TupleDesc tupdesc)
{
 StringInfoData buf;
 int i;

 pq_beginmessage(&buf, 'T');
 pq_sendint16(&buf, tupdesc->natts);

 for (i = 0; i < tupdesc->natts; ++i)
 {
  Form_pg_attribute attr = TupleDescAttr(tupdesc, i);

  pq_sendstring(&buf, NameStr(attr->attname));
  pq_sendint32(&buf, 0);
  pq_sendint16(&buf, 0);
  pq_sendint32(&buf, (int) attr->atttypid);
  pq_sendint16(&buf, attr->attlen);
  pq_sendint32(&buf, attr->atttypmod);
  pq_sendint16(&buf, 0);
 }

 pq_endmessage(&buf);
}

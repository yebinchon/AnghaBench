
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int int32 ;
typedef int int16 ;
typedef TYPE_1__* TupleDesc ;
struct TYPE_7__ {int attlen; int attname; int atttypmod; int atttypid; } ;
struct TYPE_6__ {int natts; } ;
typedef int StringInfo ;
typedef int Oid ;
typedef int List ;
typedef TYPE_2__* Form_pg_attribute ;


 int NameStr (int ) ;
 TYPE_2__* TupleDescAttr (TYPE_1__*,int) ;
 int getBaseTypeAndTypmod (int ,int *) ;
 int pq_sendint16 (int ,int ) ;
 int pq_sendint32 (int ,int ) ;
 int pq_sendstring (int ,int ) ;

__attribute__((used)) static void
SendRowDescriptionCols_2(StringInfo buf, TupleDesc typeinfo, List *targetlist, int16 *formats)
{
 int natts = typeinfo->natts;
 int i;

 for (i = 0; i < natts; ++i)
 {
  Form_pg_attribute att = TupleDescAttr(typeinfo, i);
  Oid atttypid = att->atttypid;
  int32 atttypmod = att->atttypmod;


  atttypid = getBaseTypeAndTypmod(atttypid, &atttypmod);

  pq_sendstring(buf, NameStr(att->attname));

  pq_sendint32(buf, atttypid);
  pq_sendint16(buf, att->attlen);
  pq_sendint32(buf, atttypmod);

 }
}

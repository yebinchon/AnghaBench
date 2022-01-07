
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int XLogRecPtr ;
typedef int StringInfo ;


 int pq_sendbyte (int ,char) ;
 int pq_sendint64 (int ,int ) ;
 int pq_sendstring (int ,char const*) ;

void
logicalrep_write_origin(StringInfo out, const char *origin,
      XLogRecPtr origin_lsn)
{
 pq_sendbyte(out, 'O');


 pq_sendint64(out, origin_lsn);


 pq_sendstring(out, origin);
}

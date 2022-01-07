
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int XLogRecPtr ;
typedef int StringInfo ;


 int pq_getmsgint64 (int ) ;
 int pq_getmsgstring (int ) ;
 char* pstrdup (int ) ;

char *
logicalrep_read_origin(StringInfo in, XLogRecPtr *origin_lsn)
{

 *origin_lsn = pq_getmsgint64(in);


 return pstrdup(pq_getmsgstring(in));
}

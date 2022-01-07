
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;
typedef int n64 ;
typedef int int64 ;
typedef int StringInfo ;


 int pg_ntoh64 (int ) ;
 int pq_copymsgbytes (int ,char*,int) ;

int64
pq_getmsgint64(StringInfo msg)
{
 uint64 n64;

 pq_copymsgbytes(msg, (char *) &n64, sizeof(n64));

 return pg_ntoh64(n64);
}

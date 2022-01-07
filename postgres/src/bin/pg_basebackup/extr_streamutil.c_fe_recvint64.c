
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;
typedef int n64 ;
typedef int int64 ;


 int memcpy (int *,char*,int) ;
 int pg_ntoh64 (int ) ;

int64
fe_recvint64(char *buf)
{
 uint64 n64;

 memcpy(&n64, buf, sizeof(n64));

 return pg_ntoh64(n64);
}

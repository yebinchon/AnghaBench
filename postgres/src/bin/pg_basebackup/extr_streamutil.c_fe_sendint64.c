
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;
typedef int n64 ;
typedef int int64 ;


 int memcpy (char*,int *,int) ;
 int pg_hton64 (int ) ;

void
fe_sendint64(int64 i, char *buf)
{
 uint64 n64 = pg_hton64(i);

 memcpy(buf, &n64, sizeof(n64));
}

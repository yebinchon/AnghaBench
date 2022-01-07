
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64 ;
typedef int StringInfoData ;


 char* INT64_FORMAT ;
 int pq_sendbytes (int *,char*,int ) ;
 int pq_sendint32 (int *,int ) ;
 int sprintf (char*,char*,int ) ;
 int strlen (char*) ;

__attribute__((used)) static void
send_int8_string(StringInfoData *buf, int64 intval)
{
 char is[32];

 sprintf(is, INT64_FORMAT, intval);
 pq_sendint32(buf, strlen(is));
 pq_sendbytes(buf, is, strlen(is));
}

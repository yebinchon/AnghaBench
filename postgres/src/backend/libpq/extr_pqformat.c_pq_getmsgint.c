
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int uint16 ;
typedef int StringInfo ;


 int ERROR ;
 int elog (int ,char*,int) ;
 unsigned int pg_ntoh16 (int ) ;
 unsigned int pg_ntoh32 (int ) ;
 int pq_copymsgbytes (int ,char*,int) ;

unsigned int
pq_getmsgint(StringInfo msg, int b)
{
 unsigned int result;
 unsigned char n8;
 uint16 n16;
 uint32 n32;

 switch (b)
 {
  case 1:
   pq_copymsgbytes(msg, (char *) &n8, 1);
   result = n8;
   break;
  case 2:
   pq_copymsgbytes(msg, (char *) &n16, 2);
   result = pg_ntoh16(n16);
   break;
  case 4:
   pq_copymsgbytes(msg, (char *) &n32, 4);
   result = pg_ntoh32(n32);
   break;
  default:
   elog(ERROR, "unsupported integer size %d", b);
   result = 0;
   break;
 }
 return result;
}

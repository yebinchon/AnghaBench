
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_ulong ;
typedef int zend_uchar ;


 int MYSQLND_NULL_LENGTH ;
 int uint2korr (int const*) ;
 int uint3korr (int const*) ;
 int uint4korr (int const*) ;

zend_ulong
php_mysqlnd_net_field_length(const zend_uchar **packet)
{
 register const zend_uchar *p= (const zend_uchar *)*packet;

 if (*p < 251) {
  (*packet)++;
  return (zend_ulong) *p;
 }

 switch (*p) {
  case 251:
   (*packet)++;
   return MYSQLND_NULL_LENGTH;
  case 252:
   (*packet) += 3;
   return (zend_ulong) uint2korr(p+1);
  case 253:
   (*packet) += 4;
   return (zend_ulong) uint3korr(p+1);
  default:
   (*packet) += 9;
   return (zend_ulong) uint4korr(p+1);
 }
}

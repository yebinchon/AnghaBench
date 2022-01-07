
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_uchar ;


 scalar_t__ valid_euckr (char const) ;

__attribute__((used)) static unsigned int check_mb_euckr(const char * const start, const char * const end)
{
 if (end - start <= 1) {
  return 0;
 }
 if (*(zend_uchar *)start < 0x80) {
  return 0;
 }
 if (valid_euckr(start[1])) {
  return 2;
 }
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_long ;



__attribute__((used)) static zend_long php_unpack(char *data, size_t size, int issigned, int *map)
{
 zend_long result;
 char *cresult = (char *) &result;
 size_t i;

 result = issigned ? -1 : 0;

 for (i = 0; i < size; i++) {
  cresult[map[i]] = *data++;
 }

 return result;
}

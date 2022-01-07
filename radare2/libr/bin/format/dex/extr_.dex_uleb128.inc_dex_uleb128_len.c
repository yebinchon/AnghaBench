
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;


 int LEB_MAX_SIZE ;

int dex_uleb128_len(const ut8 *ptr, int size) {
 int i = 1, result = *(ptr++);
 while (result > 0x7f && i <= LEB_MAX_SIZE && i < size) {
  result = *(ptr++);
  i++;
 }
 return i;
}

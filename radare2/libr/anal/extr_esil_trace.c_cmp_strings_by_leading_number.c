
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SdbKv ;


 char* sdbkv_key (int const*) ;

__attribute__((used)) static int cmp_strings_by_leading_number(void *data1, void *data2) {
 const char* a = sdbkv_key ((const SdbKv *)data1);
 const char* b = sdbkv_key ((const SdbKv *)data2);
 int i = 0;
 int j = 0;
 int k = 0;
 while (a[i] >= '0' && a[i] <= '9') {
  i++;
 }
 while (b[j] >= '0' && b[j] <= '9') {
  j++;
 }
 if (!i) {
  return 1;
 }
 if (!j) {
  return -1;
 }
 i--;
 j--;
 if (i > j) {
  return 1;
 }
 if (j > i) {
  return -1;
 }
 while (k <= i) {
  if (a[k] < b[k]) {
   return -1;
  }
  if (a[k] > b[k]) {
   return 1;
  }
  k++;
 }
 for (; a[i] && b[i]; i++) {
  if (a[i] > b[i]) {
   return 1;
  }
  if (a[i] < b[i]) {
   return -1;
  }
 }
 if (!a[i] && b[i]) {
  return -1;
 }
 if (!b[i] && a[i]) {
  return 1;
 }
 return 0;
}

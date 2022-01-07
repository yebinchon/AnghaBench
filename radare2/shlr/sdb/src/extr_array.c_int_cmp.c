
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ut64 ;



__attribute__((used)) static inline int int_cmp(const void *a, const void *b) {
 const ut64 va = *(const ut64 *)a;
 const ut64 vb = *(const ut64 *)b;
 if (va > vb) {
  return 1;
 }
 if (va < vb) {
  return -1;
 }
 return 0;
}

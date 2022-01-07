
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ut64 ;



__attribute__((used)) static int regcmp(const void *a, const void *b) {
 const ut64 *A = (const ut64*)a;
 const ut64 *B = (const ut64*)b;
 if (*A > *B) {
  return 1;
 }
 if (*A == *B) {
  return 0;
 }
 return -1;
}

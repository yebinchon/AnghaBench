
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int strstr2(const char *a, const char *b, int n) {
 int i, j;
 for (i = j = 0; a[i] && b[j] && j < n; i++) {
  if (a[i] == b[j]) {
   j++;
  } else {
   j = 0;
  }
 }
 return j == n;
}

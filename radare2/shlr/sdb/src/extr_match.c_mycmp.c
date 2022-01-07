
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;


 scalar_t__ tolower (int const) ;

__attribute__((used)) static inline int mycmp(const char *a, const char *b, int n, int any) {
 int i, j;
 for (i = j = 0; a[i] && b[j] && j < n; i++) {
  if (tolower ((const ut8)a[i]) == tolower ((const ut8)b[j])) {
   j++;
  } else {
   if (!any) {
    return 0;
   }
   j = 0;
  }
 }
 return any? j != n: 1;
}

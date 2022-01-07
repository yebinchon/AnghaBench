
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ut8 ;
typedef scalar_t__ unichar ;



__attribute__((used)) static int ascmatch(const ut8 *s, const unichar *us, size_t ulen) {
 size_t i;
 for (i = 0; i < ulen; i++) {
  if (s[i] != us[i]) {
   return 0;
  }
 }
 return s[i]? 0: 1;
}

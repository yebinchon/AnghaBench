
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
bool safe_strcpy(char *dst, const char *src, const size_t dstmax) {
   size_t x;

   for (x = 0; x < dstmax - 1 && src[x] != '\0'; x++) {
        dst[x] = src[x];
   }

   dst[x] = '\0';

   if (src[x] == '\0') {
       return 1;
   } else {
       return 0;
   }
}

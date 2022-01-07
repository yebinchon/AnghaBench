
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;



__attribute__((used)) static inline void matchBar(ut8 *ptr, int i) {
 if (ptr[i] < 0xff) {
  ptr[i]++;
 }
}

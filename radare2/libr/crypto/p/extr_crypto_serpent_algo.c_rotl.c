
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut32 ;



__attribute__((used)) static inline void rotl(ut32 *x, int s) {
 *x = (*x << s) | (*x >> (32 - s));
}

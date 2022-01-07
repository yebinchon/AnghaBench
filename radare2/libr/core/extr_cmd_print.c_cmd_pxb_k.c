
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;



__attribute__((used)) static inline int cmd_pxb_k(const ut8 *buffer, int x) {
 return buffer[3 - x] << (8 * x);
}

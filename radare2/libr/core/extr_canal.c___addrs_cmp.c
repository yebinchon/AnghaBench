
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ut64 ;


 scalar_t__ r_num_get (int *,void*) ;

__attribute__((used)) static int __addrs_cmp(void *_a, void *_b) {
 ut64 a = r_num_get (((void*)0), _a);
 ut64 b = r_num_get (((void*)0), _b);
 if (a > b) {
  return 1;
 }
 if (a < b) {
  return -1;
 }
        return 0;
}

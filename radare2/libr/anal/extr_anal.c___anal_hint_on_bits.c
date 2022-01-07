
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut64 ;
typedef int RAnal ;


 int __anal_add_range_on_hints (int *,int ,int) ;

__attribute__((used)) static void __anal_hint_on_bits(RAnal *a, ut64 addr, int bits, bool set) {
 if (set) {
  __anal_add_range_on_hints (a, addr, bits);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ut64 ;
typedef int RAnalFunction ;


 scalar_t__ r_anal_fcn_size (int const*) ;

__attribute__((used)) static int cmpsize (const void *_a, const void *_b) {
 const RAnalFunction *a = _a, *b = _b;
 ut64 as = r_anal_fcn_size (a);
 ut64 bs = r_anal_fcn_size (b);
 return (as> bs)? 1: (as< bs)? -1: 0;
}

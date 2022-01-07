
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RAnalFunction ;


 int r_anal_fcn_count_edges (int const*,int*) ;

__attribute__((used)) static int cmpedges(const void *_a, const void *_b) {
 const RAnalFunction *a = _a, *b = _b;
 int as, bs;
 r_anal_fcn_count_edges (a, &as);
 r_anal_fcn_count_edges (b, &bs);
 return (as > bs)? 1: (as < bs)? -1: 0;
}

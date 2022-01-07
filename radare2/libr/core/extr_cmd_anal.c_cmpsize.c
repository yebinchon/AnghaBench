
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RAnalFunction ;


 scalar_t__ r_anal_fcn_size (int const*) ;

__attribute__((used)) static int cmpsize (const void *_a, const void *_b) {
 const RAnalFunction *a = _a, *b = _b;
 int sa = (int)r_anal_fcn_size (a);
 int sb = (int)r_anal_fcn_size (b);
 return (sa > sb)? -1: (sa < sb)? 1 : 0;
}

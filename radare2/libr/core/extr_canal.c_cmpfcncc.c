
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ut64 ;
typedef int RAnalFunction ;


 scalar_t__ r_anal_fcn_cc (int *,int *) ;

__attribute__((used)) static int cmpfcncc(const void *_a, const void *_b) {
 RAnalFunction *a = (RAnalFunction *)_a;
 RAnalFunction *b = (RAnalFunction *)_b;
 ut64 as = r_anal_fcn_cc (((void*)0), a);
 ut64 bs = r_anal_fcn_cc (((void*)0), b);
 return (as > bs)? 1: (as < bs)? -1: 0;
}

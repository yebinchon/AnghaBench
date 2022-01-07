
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RAnalFunction ;


 scalar_t__ r_anal_fcn_realsize (int const*) ;

__attribute__((used)) static int compareSize(const RAnalFunction *a, const RAnalFunction *b) {

 return a && b && r_anal_fcn_realsize (a) > r_anal_fcn_realsize (b);
}

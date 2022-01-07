
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut32 ;
typedef int RAnalFunction ;


 int r_anal_fcn_contsize (int *) ;
 int r_anal_fcn_size (int *) ;

__attribute__((used)) static ut32 tmp_get_contsize(RAnalFunction *f) {
 int size = r_anal_fcn_contsize (f);
 size = (size > 0)? size: r_anal_fcn_size (f);
 return (size < 0)? 0: size;
}

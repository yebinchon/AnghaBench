
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int R_MAX (int,int) ;
 int R_MIN (int,int) ;

__attribute__((used)) static int place_nodes_sel_p(int newval, int oldval, int is_first, int is_left) {
 if (is_first) {
  return newval;
 }
 if (is_left) {
  return R_MAX (oldval, newval);
 }
 return R_MIN (oldval, newval);
}

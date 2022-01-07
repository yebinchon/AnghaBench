
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bin; } ;
typedef int RList ;
typedef TYPE_1__ RCore ;


 scalar_t__ IS_MODE_JSON (int) ;
 scalar_t__ IS_MODE_RAD (int) ;
 scalar_t__ IS_MODE_SET (int) ;
 int R_MODE_JSON ;
 int bin_mem_print (int *,int,int ,int) ;
 int * r_bin_get_mem (int ) ;
 int r_cons_print (char*) ;
 int r_cons_println (char*) ;

__attribute__((used)) static int bin_mem(RCore *r, int mode) {
 RList *mem = ((void*)0);
 if (!r) {
  return 0;
 }
 if (!IS_MODE_JSON (mode)) {
  if (!(IS_MODE_RAD (mode) || IS_MODE_SET (mode))) {
   r_cons_println ("[Memory]\n");
  }
 }
 if (!(mem = r_bin_get_mem (r->bin))) {
  if (IS_MODE_JSON (mode)) {
   r_cons_print("[]");
  }
  return 0;
 }
 if (IS_MODE_JSON (mode)) {
  r_cons_print ("[");
  bin_mem_print (mem, 7, 0, R_MODE_JSON);
  r_cons_println ("]");
  return 1;
 } else if (!(IS_MODE_RAD (mode) || IS_MODE_SET (mode))) {
  bin_mem_print (mem, 7, 0, mode);
 }
 return 1;
}

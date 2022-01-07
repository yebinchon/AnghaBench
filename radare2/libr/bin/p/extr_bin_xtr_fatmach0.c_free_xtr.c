
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r_bin_fatmach0_obj_t {int dummy; } ;


 int r_bin_fatmach0_free (struct r_bin_fatmach0_obj_t*) ;

__attribute__((used)) static void free_xtr (void *xtr_obj) {
 r_bin_fatmach0_free ((struct r_bin_fatmach0_obj_t*)xtr_obj);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut64 ;
typedef int libgdbr_t ;


 int ACCESS_WATCHPOINT ;
 int set_bp (int *,int ,char const*,int ,int) ;

int gdbr_set_hwa(libgdbr_t *g, ut64 address, const char *conditions, int sizebp) {
 return set_bp (g, address, conditions, ACCESS_WATCHPOINT, sizebp);
}

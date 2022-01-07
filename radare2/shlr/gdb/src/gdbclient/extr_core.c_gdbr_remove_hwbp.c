
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut64 ;
typedef int libgdbr_t ;


 int HARDWARE_BREAKPOINT ;
 int remove_bp (int *,int ,int ,int) ;

int gdbr_remove_hwbp(libgdbr_t *g, ut64 address, int sizebp) {
 return remove_bp (g, address, HARDWARE_BREAKPOINT, sizebp);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut64 ;
typedef int libgdbr_t ;


 int WRITE_WATCHPOINT ;
 int remove_bp (int *,int ,int ,int) ;

int gdbr_remove_hww(libgdbr_t *g, ut64 address, int sizebp) {
 return remove_bp (g, address, WRITE_WATCHPOINT, sizebp);
}

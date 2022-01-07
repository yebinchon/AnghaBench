
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut64 ;
typedef int libqnxr_t ;


 int BREAKPOINT ;
 int _qnxr_remove_bp (int *,int ,int ) ;

int qnxr_remove_bp (libqnxr_t *g, ut64 address) {
 return _qnxr_remove_bp (g, address, BREAKPOINT);
}

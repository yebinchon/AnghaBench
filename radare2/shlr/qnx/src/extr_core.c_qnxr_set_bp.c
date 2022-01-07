
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut64 ;
typedef int libqnxr_t ;


 int BREAKPOINT ;
 int _qnxr_set_bp (int *,int ,char const*,int ) ;

int qnxr_set_bp (libqnxr_t *g, ut64 address, const char *conditions) {
 return _qnxr_set_bp (g, address, conditions, BREAKPOINT);
}

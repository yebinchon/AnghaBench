
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RDebug ;


 int desc ;
 int qnxr_step (int ,int) ;

__attribute__((used)) static int r_debug_qnx_step (RDebug *dbg) {
 qnxr_step (desc, -1);
 return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RDebug ;


 int desc ;
 int free (int ) ;
 int qnxr_disconnect (int ) ;
 int reg_buf ;

__attribute__((used)) static int r_debug_qnx_detach (RDebug *dbg, int pid) {
 qnxr_disconnect (desc);
 free (reg_buf);
 return 1;
}

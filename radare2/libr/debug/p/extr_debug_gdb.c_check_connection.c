
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RDebug ;


 int desc ;
 int r_debug_gdb_attach (int *,int) ;

__attribute__((used)) static void check_connection (RDebug *dbg) {
 if (!desc) {
  r_debug_gdb_attach (dbg, -1);
 }
}

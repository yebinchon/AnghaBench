
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RDebug ;


 int is_io_bf (int *) ;

__attribute__((used)) static int r_debug_bf_attach(RDebug *dbg, int pid) {
 if (!is_io_bf (dbg)) {
  return 0;
 }
 return 1;
}

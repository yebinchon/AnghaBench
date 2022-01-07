
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut64 ;
typedef int RList ;
typedef int RDebug ;


 int * r_debug_native_frames (int *,int ) ;

__attribute__((used)) static RList* r_debug_gdb_frames(RDebug *dbg, ut64 at) {
 return r_debug_native_frames (dbg, at);
}

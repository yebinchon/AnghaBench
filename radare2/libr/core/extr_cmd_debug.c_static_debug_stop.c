
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RDebug ;


 int r_debug_stop (int *) ;

__attribute__((used)) static void static_debug_stop(void *u) {
 RDebug *dbg = (RDebug *)u;
 r_debug_stop (dbg);
}

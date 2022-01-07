
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ bits; } ;
typedef TYPE_1__ RDebug ;


 scalar_t__ R_SYS_BITS_64 ;
 int xnu_x86_hwstep_enable32 (TYPE_1__*,int) ;
 int xnu_x86_hwstep_enable64 (TYPE_1__*,int) ;

bool xnu_native_hwstep_enable(RDebug *dbg, bool enable) {
 if (dbg->bits == R_SYS_BITS_64)
  return xnu_x86_hwstep_enable64 (dbg, enable);
 return xnu_x86_hwstep_enable32 (dbg, enable);
}

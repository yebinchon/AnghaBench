
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VMX_MAX ;
 int VSX_MAX ;

void load_vsx_vmx(unsigned long *load, unsigned long *vsx,
  unsigned long vmx[][2])
{
 int i;

 for (i = 0; i < VSX_MAX; i++)
  vsx[i] = load[1 + 2 * i];

 for (i = 0; i < VMX_MAX; i++) {
  vmx[i][0] = load[64 + 2 * i];
  vmx[i][1] = load[65 + 2 * i];
 }
}

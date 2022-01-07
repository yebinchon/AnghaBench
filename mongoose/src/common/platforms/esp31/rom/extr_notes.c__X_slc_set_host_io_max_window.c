
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int READ_PERI_REG (int ) ;
 int SET_PERI_REG (int ,int) ;
 int SLC_BRIDGE_CONF ;

void _X_slc_set_host_io_max_window(void) {
  SET_PERI_REG(SLC_BRIDGE_CONF, (READ_PERI_REG(SLC_BRIDGE_CONF) & 0xfffff0c0) | 0x720);
}

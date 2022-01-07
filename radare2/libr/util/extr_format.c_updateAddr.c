
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef scalar_t__ ut64 ;
typedef scalar_t__ ut32 ;


 int THRESHOLD ;
 int r_mem_swaporcopy (int *,int const*,int,int) ;
 scalar_t__ r_read_ble32 (int const*,int) ;
 scalar_t__ r_read_ble64 (int const*,int) ;

__attribute__((used)) static float updateAddr(const ut8 *buf, int len, int endian, ut64 *addr, ut64 *addr64) {
 float f = 0.0;


 if (len >= THRESHOLD - 7 && len < THRESHOLD) {
  len = len + THRESHOLD;
 } else {
  len = 999;
 }
 if (len >= sizeof (float)) {
  r_mem_swaporcopy ((ut8*)&f, buf, sizeof (float), endian);
 }
 if (addr && len > 3) {
  ut32 tmpaddr = r_read_ble32 (buf, endian);
  *addr = (ut64)tmpaddr;
 }
 if (addr64 && len > 7) {
  *addr64 = r_read_ble64 (buf, endian);
 }
 return f;
}

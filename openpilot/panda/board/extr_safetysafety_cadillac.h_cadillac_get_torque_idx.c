
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX (int,int ) ;
 int MIN (int ,int) ;

int cadillac_get_torque_idx(int addr, int array_size) {
  return MIN(MAX(addr - 0x151, 0), array_size);
}

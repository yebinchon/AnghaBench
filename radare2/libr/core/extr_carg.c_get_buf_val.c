
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut64 ;


 scalar_t__ r_read_ble32 (int *,int) ;
 int r_read_ble64 (int *,int) ;

__attribute__((used)) static ut64 get_buf_val(ut8 *buf, int endian, int width) {
 return (width == 8)? r_read_ble64 (buf, endian) : (ut64) r_read_ble32 (buf,endian);
}

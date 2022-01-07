
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut64 ;
typedef int RBuffer ;


 int r_buf_read_at (int *,int ,int *,int) ;
 int r_read_le64 (int *) ;

__attribute__((used)) static ut64 r_buf_read64le(RBuffer *buf, ut64 off) {
 ut8 data[8] = {0};
 r_buf_read_at (buf, off, data, 8);
 return r_read_le64 (data);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut64 ;
typedef int RBuffer ;


 int r_buf_read_le64_at (int *,int) ;
 int r_buf_size (int *) ;

ut64 readLE64(RBuffer *buf, int off) {
 return r_buf_size (buf) >= off + 8? r_buf_read_le64_at (buf, off): 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef scalar_t__ ut32 ;
typedef int RBuffer ;


 int r_buf_read_at (int *,int,int *,int) ;

ut32 readLE32(RBuffer *buf, int off) {

 ut32 num = 0;
 (void)r_buf_read_at (buf, off, (ut8 *)&num, 4);
 return num;
}

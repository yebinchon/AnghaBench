
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef scalar_t__ ut64 ;
typedef int RBuffer ;


 int gprobe_checksum (int const*,scalar_t__) ;
 int r_buf_append_bytes (int *,int *,int) ;
 int * r_buf_data (int *,scalar_t__*) ;
 int r_buf_prepend_bytes (int *,int const*,int) ;

__attribute__((used)) static void gprobe_frame_sp(RBuffer *frame) {
 ut64 size;
 const ut8 *tmp = r_buf_data (frame, &size);
 size += 2;
 ut8 checksum;

 r_buf_prepend_bytes (frame, (const ut8 *)&size, 1);
 checksum = gprobe_checksum (tmp, size - 1);

 r_buf_append_bytes (frame, &checksum, 1);
}

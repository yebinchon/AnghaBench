
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ut8 ;
typedef int ut64 ;
typedef int RBuffer ;


 scalar_t__* malloc (int) ;
 int r_buf_read_at (int *,int ,scalar_t__*,int) ;

__attribute__((used)) static char *r_buf_read_string(RBuffer *buf, ut64 addr, int len) {
 ut8 *data = malloc (len);
 if (data) {
  r_buf_read_at (buf, addr, data, len);
  data[len - 1] = 0;
  return (char *)data;
 }
 return ((void*)0);
}

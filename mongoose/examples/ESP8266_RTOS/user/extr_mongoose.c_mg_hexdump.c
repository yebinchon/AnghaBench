
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mg_hexdump_n (void const*,int,char*,int,int ) ;

int mg_hexdump(const void *buf, int len, char *dst, int dst_len) {
  return mg_hexdump_n(buf, len, dst, dst_len, 0);
}

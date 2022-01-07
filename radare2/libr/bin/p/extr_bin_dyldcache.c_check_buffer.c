
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ut8 ;
typedef int hdr ;
typedef int arch ;
typedef int RBuffer ;


 scalar_t__ memcmp (scalar_t__*,char*,int) ;
 int r_buf_read_at (int *,int,scalar_t__*,int) ;
 int r_buf_size (int *) ;
 int strstr (char const*,char*) ;

__attribute__((used)) static bool check_buffer(RBuffer *buf) {
 if (r_buf_size (buf) < 32) {
  return 0;
 }

 ut8 hdr[4];
 ut8 arch[9] = { 0 };
 int rarch = r_buf_read_at (buf, 9, arch, sizeof (arch) - 1);
 int rhdr = r_buf_read_at (buf, 0, hdr, sizeof (hdr));
 if (rhdr != sizeof (hdr) || memcmp (hdr, "dyld", 4)) {
  return 0;
 }
 if (rarch > 0 && arch[0] && !strstr ((const char *)arch, "arm64")) {
  return 0;
 }
 return 1;
}

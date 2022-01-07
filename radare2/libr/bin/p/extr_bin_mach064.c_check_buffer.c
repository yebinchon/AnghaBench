
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int buf ;
typedef int RBuffer ;


 int is_kernelcache_buffer (int *) ;
 int memcmp (int *,char*,int) ;
 int r_buf_read_at (int *,int ,int *,int) ;
 int r_buf_size (int *) ;

__attribute__((used)) static bool check_buffer(RBuffer *b) {
 ut8 buf[4] = {0};
 if (r_buf_size (b) > 4) {
  r_buf_read_at (b, 0, buf, sizeof (buf));
  if (!memcmp (buf, "\xfe\xed\xfa\xcf", 4)) {
   return 1;
  }
  if (!memcmp (buf, "\xcf\xfa\xed\xfe", 4)) {
   return !is_kernelcache_buffer (b);
  }
 }
 return 0;
}

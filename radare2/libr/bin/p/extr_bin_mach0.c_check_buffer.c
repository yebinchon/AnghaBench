
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int RBuffer ;


 int memcmp (int *,char*,int) ;
 scalar_t__ r_buf_read_at (int *,int ,int *,int) ;
 int r_buf_size (int *) ;

__attribute__((used)) static bool check_buffer(RBuffer *b) {
 if (r_buf_size (b) >= 4) {
  ut8 buf[4] = {0};
  if (r_buf_read_at (b, 0, buf, 4)) {
   if (!memcmp (buf, "\xce\xfa\xed\xfe", 4) ||
    !memcmp (buf, "\xfe\xed\xfa\xce", 4)) {
    return 1;
   }
  }
 }
 return 0;
}

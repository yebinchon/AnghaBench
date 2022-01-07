
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int buf ;
typedef int RBuffer ;


 int memcmp (int *,char*,int) ;
 int r_buf_read_at (int *,int ,int *,int) ;
 int r_buf_read_be16_at (int *,int) ;
 int r_buf_read_be32_at (int *,int) ;
 int r_buf_size (int *) ;

__attribute__((used)) static bool check_buffer(RBuffer *b) {
 if (r_buf_size (b) > 32) {
  ut8 buf[4];
  r_buf_read_at (b, 0, buf, sizeof (buf));
  if (!memcmp (buf, "\xca\xfe\xba\xbe", 4)) {
   int off = r_buf_read_be32_at (b, 4 * sizeof (int));
   int version = r_buf_read_be16_at (b, 6);
   if (off > 0 && version < 1024) {
    return 1;
   }
  }
 }
 return 0;
}

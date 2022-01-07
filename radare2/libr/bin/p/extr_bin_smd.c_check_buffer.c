
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int buf ;
typedef int RBuffer ;


 int memcmp (int *,char*,int) ;
 int r_buf_read_at (int *,int,int *,int) ;
 int r_buf_size (int *) ;

__attribute__((used)) static bool check_buffer(RBuffer *b) {
 if (r_buf_size (b) > 0x190) {
  ut8 buf[4];
  r_buf_read_at (b, 0x100, buf, sizeof (buf));
  return !memcmp (buf, "SEGA", 4);
 }
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int magic ;
typedef int RBuffer ;


 scalar_t__ N64_ROM_START ;
 int memcmp (int *,char*,int) ;
 int r_buf_read_at (int *,int ,int *,int) ;
 scalar_t__ r_buf_size (int *) ;

__attribute__((used)) static bool check_buffer(RBuffer *b) {
 ut8 magic[4];
 if (r_buf_size (b) < N64_ROM_START) {
  return 0;
 }
 (void)r_buf_read_at (b, 0, magic, sizeof (magic));
 return !memcmp (magic, "\x80\x37\x12\x40", 4);
}

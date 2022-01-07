
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ninlogohead ;
typedef int RBuffer ;


 int memcmp (int *,char*,int) ;
 int r_buf_read_at (int *,int,int *,int) ;

__attribute__((used)) static bool check_buffer(RBuffer *b) {
 ut8 ninlogohead[6];
 if (r_buf_read_at (b, 0xc0, ninlogohead, sizeof (ninlogohead)) == 6) {

  if (!memcmp (ninlogohead, "\x24\xff\xae\x51\x69\x9a", 6)) {
   return 1;
  }

  if (!memcmp (ninlogohead, "\xC8\x60\x4F\xE2\x01\x70", 6)){
   return 1;
  }
 }
 return 0;
}

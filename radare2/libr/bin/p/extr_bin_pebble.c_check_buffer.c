
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int magic ;
typedef int RBuffer ;


 int memcmp (int *,char*,int) ;
 int r_buf_read_at (int *,int ,int *,int) ;

__attribute__((used)) static bool check_buffer(RBuffer *b) {
 ut8 magic[8];
 if (r_buf_read_at (b, 0, magic, sizeof (magic)) != sizeof (magic)) {
  return 0;
 }
 return !memcmp (magic, "PBLAPP\x00\x00", 8);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int RBuffer ;


 int VICE_MAGIC ;
 int VICE_MAGIC_LEN ;
 int memcmp (int *,int ,int) ;
 int r_buf_read_at (int *,int ,int *,int) ;

__attribute__((used)) static bool check_buffer(RBuffer *b) {
 ut8 magic[VICE_MAGIC_LEN];
 if (r_buf_read_at (b, 0, magic, VICE_MAGIC_LEN) == VICE_MAGIC_LEN) {
  return !memcmp (magic, VICE_MAGIC, VICE_MAGIC_LEN);
 }
 return 0;
}

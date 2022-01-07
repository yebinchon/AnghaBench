
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int magic ;
typedef int RBuffer ;


 int PSXEXE_ID ;
 int PSXEXE_ID_LEN ;
 int memcmp (int *,int ,int) ;
 int r_buf_read_at (int *,int ,int *,int) ;

__attribute__((used)) static bool check_buffer(RBuffer *b) {
 ut8 magic[PSXEXE_ID_LEN];
 if (r_buf_read_at (b, 0, magic, sizeof (magic)) == PSXEXE_ID_LEN) {
  return !memcmp (magic, PSXEXE_ID, PSXEXE_ID_LEN);
 }
 return 0;
}

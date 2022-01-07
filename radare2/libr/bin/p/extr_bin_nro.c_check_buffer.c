
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int magic ;
typedef int RBuffer ;


 int NRO_OFF (int *) ;
 int * fileType (int *) ;
 int r_buf_read_at (int *,int ,int *,int) ;

__attribute__((used)) static bool check_buffer(RBuffer *b) {
 ut8 magic[4];
 if (r_buf_read_at (b, NRO_OFF (magic), magic, sizeof (magic)) == 4) {
  return fileType (magic) != ((void*)0);
 }
 return 0;
}

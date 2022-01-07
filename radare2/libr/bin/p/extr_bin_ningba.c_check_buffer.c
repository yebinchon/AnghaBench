
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int lict ;
typedef int RBuffer ;


 int lic_gba ;
 int memcmp (int *,int ,int) ;
 int r_buf_read_at (int *,int,int *,int) ;
 int r_return_val_if_fail (int *,int) ;

__attribute__((used)) static bool check_buffer(RBuffer *b) {
 ut8 lict[156];
 r_return_val_if_fail (b, 0);
 r_buf_read_at (b, 4, (ut8*)lict, sizeof (lict));
 return !memcmp (lict, lic_gba, 156);
}

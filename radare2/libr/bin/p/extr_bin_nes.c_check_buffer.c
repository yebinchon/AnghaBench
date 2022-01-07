
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int buf ;
typedef int RBuffer ;


 int INES_MAGIC ;
 int memcmp (int *,int ,int) ;
 int r_buf_read_at (int *,int ,int *,int) ;
 int r_buf_size (int *) ;

__attribute__((used)) static bool check_buffer(RBuffer *b) {
 if (r_buf_size (b) > 4) {
  ut8 buf[4];
  r_buf_read_at (b, 0, buf, sizeof (buf));
  return (!memcmp (buf, INES_MAGIC, sizeof (buf)));
 }
 return 0;
}

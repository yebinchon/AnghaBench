
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int buf ;
typedef int RBuffer ;


 int memcmp (int *,char*,int) ;
 int r_buf_read_at (int *,int ,int *,int) ;

__attribute__((used)) static bool check_buffer(RBuffer *b) {
 ut8 buf[4];
 r_buf_read_at (b, 0, buf, sizeof (buf));
 return !memcmp (buf, "\x02\xff\x01\xff", 4);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int tmp ;
typedef int RBuffer ;


 int r_buf_read_at (int *,int ,int *,int) ;
 int strncmp (char*,char*,int) ;

__attribute__((used)) static bool check_buffer(RBuffer *buf) {
 char tmp[4];
 int r = r_buf_read_at (buf, 0, (ut8 *)tmp, sizeof (tmp));
 return r == 4 && !strncmp (tmp, "art\n", 4);
}

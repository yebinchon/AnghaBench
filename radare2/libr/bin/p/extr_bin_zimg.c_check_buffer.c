
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zimghdr ;
typedef int ut8 ;
typedef int RBuffer ;


 int memcmp (int *,char*,int) ;
 scalar_t__ r_buf_read_at (int *,int ,int *,int) ;

__attribute__((used)) static bool check_buffer(RBuffer *b) {
 ut8 zimghdr[8];
 if (r_buf_read_at (b, 0, zimghdr, sizeof (zimghdr))) {

  if (!memcmp (zimghdr, "\x00\x00\xa0\xe1\x00\x00\xa0\xe1", 8)) {
   return 1;
  }
 }
 return 0;
}

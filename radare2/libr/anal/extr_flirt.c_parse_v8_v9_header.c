
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pattern_size; } ;
typedef TYPE_1__ idasig_v8_v9_t ;
typedef int RBuffer ;


 int r_buf_read (int *,unsigned char*,int) ;

__attribute__((used)) static int parse_v8_v9_header(RBuffer *buf, idasig_v8_v9_t *header) {
 if (r_buf_read (buf, (unsigned char *)&header->pattern_size, sizeof (header->pattern_size)) != sizeof (header->pattern_size)) {
  return 0;
 }

 return 1;
}

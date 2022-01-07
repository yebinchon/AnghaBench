
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int unknown; } ;
typedef TYPE_1__ idasig_v10_t ;
typedef int RBuffer ;


 int r_buf_read (int *,unsigned char*,int) ;

__attribute__((used)) static int parse_v10_header(RBuffer *buf, idasig_v10_t *header) {
 if (r_buf_read (buf, (unsigned char *)&header->unknown, sizeof (header->unknown)) != sizeof (header->unknown)) {
  return 0;
 }

 return 1;
}

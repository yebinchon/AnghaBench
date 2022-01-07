
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int n_functions; } ;
typedef TYPE_1__ idasig_v6_v7_t ;
typedef int RBuffer ;


 int r_buf_read (int *,unsigned char*,int) ;

__attribute__((used)) static int parse_v6_v7_header(RBuffer *buf, idasig_v6_v7_t *header) {
 if (r_buf_read (buf, (unsigned char *)&header->n_functions, sizeof (header->n_functions)) != sizeof (header->n_functions)) {
  return 0;
 }

 return 1;
}

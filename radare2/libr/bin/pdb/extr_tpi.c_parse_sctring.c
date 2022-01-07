
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ size; int * name; } ;
typedef TYPE_1__ SCString ;


 int CAN_READ (unsigned int,int,unsigned int) ;
 int init_scstring (TYPE_1__*,unsigned int,char*) ;

int parse_sctring(SCString *sctr, unsigned char *leaf_data, unsigned int *read_bytes, unsigned int len) {
 unsigned int c = 0;
 sctr->name = ((void*)0);
 sctr->size = 0;
 while (*leaf_data) {
  CAN_READ((*read_bytes + c), 1, len);
  c++;
  leaf_data++;
 }
 CAN_READ(*read_bytes, 1, len);
 leaf_data += 1;
 (*read_bytes) += (c + 1);

 init_scstring (sctr, c + 1, (char *)leaf_data - (c + 1));
 return 1;
}

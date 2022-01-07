
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int size; } ;
struct TYPE_5__ {int leaf_type; TYPE_2__ name; int segment; int offset; int symtype; } ;
typedef TYPE_1__ SGlobal ;


 int READ1 (unsigned int,int,int ,char*,int ) ;
 int READ2 (unsigned int,int,int ,char*,int ) ;
 int READ4 (unsigned int,int,int ,char*,int ) ;
 int init_scstring (TYPE_2__*,int ,char*) ;
 int parse_sctring (TYPE_2__*,unsigned char*,unsigned int*,int) ;
 int ut32 ;
 int ut8 ;

__attribute__((used)) static int parse_global(char *data, int data_size, SGlobal *global) {
 unsigned int read_bytes = 2;

 READ4(read_bytes, data_size, global->symtype, data, ut32);
 READ4(read_bytes, data_size, global->offset, data, ut32);
 READ2(read_bytes, data_size, global->segment, data, ut8);
 if (global->leaf_type == 0x110E) {
  parse_sctring(&global->name, (unsigned char *)data, &read_bytes, data_size);
 } else {
  READ1(read_bytes, data_size, global->name.size, data, ut8);
  init_scstring(&global->name, global->name.size, data);
 }

 return read_bytes;
}

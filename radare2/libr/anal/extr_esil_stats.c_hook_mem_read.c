
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut64 ;
struct TYPE_3__ {int stats; } ;
typedef TYPE_1__ RAnalEsil ;


 int sdb_array_add_num (int ,char*,int ,int ) ;

__attribute__((used)) static int hook_mem_read(RAnalEsil *esil, ut64 addr, ut8 *buf, int len) {
 sdb_array_add_num (esil->stats, "mem.read", addr, 0);
 return 0;
}

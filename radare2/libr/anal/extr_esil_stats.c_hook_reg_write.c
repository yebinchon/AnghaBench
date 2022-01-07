
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_3__ {int stats; } ;
typedef TYPE_1__ RAnalEsil ;


 int sdb_array_add (int ,char*,char const*,int ) ;

__attribute__((used)) static int hook_reg_write(RAnalEsil *esil, const char *name, ut64 *val) {
 sdb_array_add (esil->stats, "reg.write", name, 0);
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_3__ {int stats; } ;
typedef TYPE_1__ RAnalEsil ;


 int sdb_array_add (int ,char const*,char const*,int ) ;

__attribute__((used)) static int hook_reg_read(RAnalEsil *esil, const char *name, ut64 *res, int *size) {
 const char *key = (*name>='0' && *name<='9')? "num.load": "reg.read";
 sdb_array_add (esil->stats, key, name, 0);
 return 0;
}

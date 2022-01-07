
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_3__ {int stats; } ;
typedef TYPE_1__ RAnalEsil ;


 int sdb_array_add (int ,char*,char const*,int ) ;

__attribute__((used)) static int hook_flag_read(RAnalEsil *esil, const char *flag, ut64 *num) {
 sdb_array_add (esil->stats, "flg.read", flag, 0);
 return 0;
}

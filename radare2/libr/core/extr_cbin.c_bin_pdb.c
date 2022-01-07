
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_6__ {int file; } ;
struct TYPE_5__ {TYPE_3__* bin; } ;
typedef TYPE_1__ RCore ;


 int r_bin_get_baddr (TYPE_3__*) ;
 int r_core_pdb_info (TYPE_1__*,int ,int ,int) ;

__attribute__((used)) static int bin_pdb(RCore *core, int mode) {
 ut64 baddr = r_bin_get_baddr (core->bin);
 return r_core_pdb_info (core, core->bin->file, baddr, mode);
}

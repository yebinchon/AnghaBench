
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_4__ {int offset; } ;
typedef TYPE_1__ RCore ;


 int r_core_print_disasm_instructions (TYPE_1__*,int ,int) ;
 int r_core_seek (TYPE_1__*,int ,int) ;

__attribute__((used)) static int __disasm(void *_core, ut64 addr) {
 RCore *core = _core;
 ut64 prevaddr = core->offset;
 int len;

 r_core_seek (core, addr, 1);
 len = r_core_print_disasm_instructions (core, 0, 1);
 r_core_seek (core, prevaddr, 1);

 return len;
}
